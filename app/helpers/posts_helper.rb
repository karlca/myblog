module PostsHelper

  #归档
  def archives
    @postlist = Post.group_by_year(:created_at, series: false, format: "%Y").count
  end

  #分类归档
  def getcategory
    @postlist = Post.group(:category).count
  end
end
