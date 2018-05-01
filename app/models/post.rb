class Post < ApplicationRecord
  before_save :getdescription, on: :create

  #验证
  validates :title, presence: true
  validates :body, presence: true
  #一个博客一个分类
  belongs_to :category
  #一个博客有多个评论
  has_many :comments

  #设置分页数据
  paginates_per 4

  #如果摘要为空则自动生成
  def getdescription
    if self.description.nil?
      self.description = self.body[0..100]
    end
  end



end
