class Article < ApplicationRecord
  has_many :comments, dependent: :delete_all
  has_one_attached :image
  validates :title, presence: true,
                    length: { minimum: 5 }
end
