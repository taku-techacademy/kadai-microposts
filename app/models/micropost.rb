class Micropost < ApplicationRecord
  belongs_to :user

  validates :content, presence: true, length: { maximum: 255 }
  
  has_many :reverses_of_favorite, class_name: 'Favorite', foreign_key: 'user_id'
  has_many :user_favorited, through: :reverses_of_favorite, source: :user
end