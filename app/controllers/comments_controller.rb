class CommentsController < ApplicationController
  skip_before_action :require_logout

  def create
    @post_image = PostImage.find(params[:post_image_id])
    @comment =
      @post_image.comments.create(
        comment_params.merge(user_id: session[:user_id]),
      )
    redirect_to post_image_path(@post_image)
  end

  def edit; end

  def update
    @post_image = PostImage.find(params[:post_image_id])
    @comment = @post_image.comments.find(params[:id])
    @comment.update(comment_params)
    redirect_to edit_post_image_comments_url,
                notice: 'Comment was successfully updated.'
  end

  def destroy
    @post_image = PostImage.find(params[:post_image_id])
    @comment = @post_image.comments.find(params[:id])
    @comment.destroy
    redirect_to post_image_path(@post_image),
                alert: 'Comment was successfully destroyed.'
  end

  private

  def comment_params
    params.require(:comment).permit(:body)
  end
end
