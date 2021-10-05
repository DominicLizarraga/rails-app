class Post < ApplicationRecord
  validates :title, :summary, presence: true, uniqueness: true
  validates :body, length: { minimum: 10 }
  validates :active, inclusion: [true, false]
  belongs_to :category

  def details
    "This post was created at #{ created_at.strftime("%d %M %Y") }"
  end

  def self.total
    all.size
  end
end
