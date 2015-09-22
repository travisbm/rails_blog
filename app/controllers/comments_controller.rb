class CommentsController < ApplicationController

  def index
    render template: 'comments/index.html.erb', locals: { all_comments: Comment.all}
  end

  def show
    render template: 'comments/show.html.erb', locals: { comments: Comment.all.where(post_id: params[:id])}
  end

  def create
  end

  def update
  end

  def destroy
  end

end
