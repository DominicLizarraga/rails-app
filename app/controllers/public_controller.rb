class  PublicController < ApplicationController
  def homepage
    @posts = Post.all
  end

  def about

  end

  def contact

  end

  def blog

  end
end
