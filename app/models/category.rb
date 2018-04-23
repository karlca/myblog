class Category < ApplicationRecord
  #验证
  validates :name, presence: true

  #与博客的关系
  has_many :posts
end
