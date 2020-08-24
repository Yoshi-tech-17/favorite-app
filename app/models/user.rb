class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :posts
  has_many :likes

  def liked_by?(post_id)
    likes.where(post_id: post_id).exists?
  end
end