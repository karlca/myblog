module PostsHelper

  #归档
  def archives
    @postlist = Post.group_by_day(:created_at, format: "%Y年%m月%d日").count
  end

  #分类归档
  def getcategory
    @postlist = Post.group(:category).count
  end
end
