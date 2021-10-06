class Post < ApplicationRecord
  validates :title, :summary, presence: true, uniqueness: true
  validates :body, length: { minimum: 10 }
  validates :active, inclusion: [true, false]
  belongs_to :category

  def details
    "This post was created at #{ created_at.strftime("%d %M %Y") }"
  end

  scope :active, -> { where( active: true ) }
  scope :order_by_latest_first, -> { order( created_at: :desc ) }
  scope :limit_2, -> { limit( 2 ) }

  def self.total
    all.size
  end

  after_create :update_total_posts_count

  private

  def update_total_posts_count
    category.increment(:total_count, 1).save
  end
end
