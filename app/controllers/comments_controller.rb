class CommentsController < ApplicationController
  before_action :authenticate_user!, only: :create

  def create
    Comment.create(comment_params)
    redirect_to root_path
  end

  private
  def comment_params
    params.require(:comment).permit(:text).merge(user_id: current_user.id, code_id: params[:code_id])
  end
end
