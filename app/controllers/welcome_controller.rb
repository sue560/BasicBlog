class WelcomeController < ApplicationController
  def index
    @posts = Post.all
    if params[:tag]
      @posts = Post.order(created_at: :desc).where(:tag => params[:tag])
    else
      @posts = Post.order(created_at: :desc)
    end

    if params[:search]
      @posts = Post.search(params[:search]).order("created_at DESC")
    else
      @posts = Post.all.order('created_at DESC')
    end
  end
end
