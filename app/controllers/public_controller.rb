class  PublicController < ApplicationController
  def homepage
    @posts = Post.active.order_by_latest_first.limit_2
    @categories = Category.all
  end

  def about

  end

  def contact

  end

  def blog

  end


end
