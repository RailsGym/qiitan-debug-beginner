class Article < ApplicationRecord
  belongs_to :user
  has_many :likes, dependent: :destroy
  has_many :stocks, dependent: :destroy
  has_many :comments, dependent: :destroy

  validates :title, presence: true, length: { maximum: 255 }
  validates :body, presence: true
end