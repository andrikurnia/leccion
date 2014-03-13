class PageController < ApplicationController
  def index
    @posts = Post.order("id DESC").page params[:page]
  end

  def news
  end
end
