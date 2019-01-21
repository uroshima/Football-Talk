class Story < ApplicationRecord
  validates :title, uniqueness: true
  validates :title, :author_id, :content, :subtitle, presence: true

  belongs_to :author,
  primary_key: :id,
  foreign_key: :author_id,
  class_name: :User

  has_many :responses,
  primary_key: :id,
  foreign_key: :story_id,
  class_name: :Response

  has_many :claps,
  as: :clappable

  has_one_attached :photo

  # methods

    def read_time
      word_count = self.content.split(' ').length
      minutes = word_count / 140
      if minutes < 1
        "< 1 minute read"
      else
        "#{minutes} min read"
      end
    end

  def date
    monthShort = [
      "Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"
    ]

    monthLong= [
      "January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"
    ]

    year = self.created_at.year
    month = monthShort[self.created_at.month]
    day = self.created_at.day
    return "#{month} #{day}"
  end

  def totalClaps
    self.claps.sum(:clap_count)
  end
end


