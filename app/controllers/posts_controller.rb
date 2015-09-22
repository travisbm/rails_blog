class PostsController < ApplicationController

  def index
    render template: 'posts/index.html.erb', locals: { all_posts: Post.all }
  end

  def show
    render template: 'posts/show.html.erb', locals: { post: Post.find(params[:id]) }
  end

  def create
  end

  def update
  end

  def destroy
  end

end
