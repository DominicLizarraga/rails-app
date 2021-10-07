module PostsHelper

  def post_meta post
    "Created " + time_ago_in_words(post.created_at) + " within #{post.category.title} "
  end
end
