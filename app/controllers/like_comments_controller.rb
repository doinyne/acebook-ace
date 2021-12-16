class LikeCommentsController < ApplicationController
  skip_before_action :require_logout

  def create
    if already_liked?
      flash[:notice] = "You can't like more than once"
    else
      @comment.likes.create(user_id: Current.user.id)
    end
    redirect_to post_image_path(@comment)
  end

  def destroy
    if !(already_liked?)
      flash[:notice] = 'Cannot unlike'
    else
      find_like
      @like.destroy
    end
    redirect_to post_image_path(@comment)
  end

  def find_like
    @like = @post_image.likes.find(params[:id])
  end

  private

  def already_liked?
    Like.where(user_id: Current.user.id, post_image_id: params[:post_image_id])
      .exists?
  end

  def find_post
    @post_image = PostImage.find(params[:post_image_id])
  end

  def comment 
    @comment = LikeComment.find(params[:post_id])
  end

end
