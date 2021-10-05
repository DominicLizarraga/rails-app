class Category < ApplicationRecord
  validates :title, :url, prescense: true

end
