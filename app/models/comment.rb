class Comment < ApplicationRecord
  #验证
  validates :body, presence: true

  belongs_to :post

end
