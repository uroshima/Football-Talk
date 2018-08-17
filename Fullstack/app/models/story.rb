class Story < ApplicationRecord
  validates :title, uniqueness: true
  validates :title, :content, :subtitle, presence: true

  belongs_to :author,
  foreign_key: :author_id,
  class_name: :User

  has_one_attached :photo
end
