module PostsHelper

  def post_meta post
    "Created #{ time_ago_in_words(post.created_at) } ago. Within #{ post.category.title }. Post has been seend (#{ post.views } views)."
  end
end
