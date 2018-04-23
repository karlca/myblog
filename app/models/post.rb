class Post < ApplicationRecord

  #验证
  validates :title, presence: true
  validates :body, presence: true
  validates :description, presence: true
  #一个博客一个分类
  belongs_to :category
end
