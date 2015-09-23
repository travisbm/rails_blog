class PostsController < ApplicationController

  def index
    render template: 'posts/index.html.erb', locals: { all_posts: Post.all }
  end

  def show
    render template: 'posts/show.html.erb', locals: { post: Post.find(params[:id]),
                                          comments: Post.find(params[:id]).comments }
  end

  def create
    post = Post.new
    post.title   = params.fetch(:post).fetch(:title)
    post.body   = params.fetch(:post).fetch(:body)
    post.published = false
    if post.save
      redirect_to post_path(post)
    else
      redirect_to posts_path #If post didn't save, go back to wits index :(
    end
  end

  def new
    @post = Post.new
  end

  def update
  end

  def destroy
  end

end
