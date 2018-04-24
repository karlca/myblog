class Category < ApplicationRecord

  #与博客的关系
  has_many :posts
end
