class Post < ApplicationRecord

  #验证
  validates :title, presence: true
  validates :body, presence: true
  validates :description, presence: true
end
