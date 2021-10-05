class Post < ApplicationRecord
  validates :title, :summary prescense: true, length: { maximum: 100 }, uniqueness: true
  validates :body, length: { minimum: 100 }
  validates :active, in [ true, false ]
end
