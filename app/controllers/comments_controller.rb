class CommentsController < ApplicationController

  def index
    render template: 'comments/index.html.erb', locals: { all_comments: Comment.all}
  end

  def show
    render template: 'comments/show.html.erb', locals: {
      comments: Comment.all.where(post_id: params[:id])
    }
  end

  def new
    #params[:post_id]
    render template: 'comments/new.html.erb', locals: {
      comment: Comment.new
    }
  end

  def create
    comment = comment.new
    comment.post_id   = Post.where(title: params.fetch(:comment).fetch(:title))
    comment.body      = params.fetch(:comment).fetch(:body)
    comment.published = false
    if comment.save
      redirect_to comment_path(comment)
    else
      redirect_to comments_path #If comment didn't save, go back to wits index :(
    end
  end

  def update
  end

  def destroy
  end

end
