class User < ApplicationRecord
  validates :email, uniqueness: true
  validates :password, length: { minimum: 6, allow_nil: true }
  validates :email, :password_digest, :session_token, presence: true

  attr_reader :password

  after_initialize :ensure_session_token, :ensure_user_avatar

  has_one_attached :avatar

  has_many :authored_stories,
  primary_key: :id,
  foreign_key: :author_id,
  class_name: :Story

  # has_many :responses,
  # primary_key: :id,
  # foreign_key: :responder_id,
  # class_name: :Response

  # has_many :users_following,
  # primary_key: :id,
  # foreign_key: :followed_id,
  # class_name: :Follow

  # has_many :user_follows,
  # primary_key: :id,
  # foreign_key: :follower_id,
  # class_name: :Follow

  # has_many :claps,
  # primary_key: :id,
  # foreign_key: :clapper_id,
  # class_name: :Clap

  # has_many :followers,
  # through: :users_following,
  # source: :follower

  # has_many :followed_users,
  # through: :user_follows,
  # source: :followed

  # has_many :followed_user_stories,
  # through: :followed_users,
  # source: :authored_stories

  # methods

  def self.find_by_credentials(email, password)
    user = User.find_by(email: email)
    user && user.is_password?(password) ? user : nil
  end

  def is_password?(password)
    BCrypt::Password.new(self.password_digest).is_password?(password)
  end

  def password=(password)
    @password = password
    self.password_digest = BCrypt::Password.create(password)
  end

  def reset_session_token!
    self.session_token = SecureRandom.urlsafe_base64
    self.save!
    self.session_token
  end

  def ensure_session_token
    self.session_token ||= SecureRandom.urlsafe_base64
  end

  def ensure_user_avatar
    self.avatar
  end
end
