class CodesController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create, :edit]
  before_action :set_code, only: [:edit, :show, :update, :destroy]

  def index
    @code = Code.all.order('created_at DESC')
  end

  def new
    @code = Code.new
  end

  def create
    @code = Code.new(code_params)
    if @code.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
    @comment = Comment.new
    @comments = @code.comments.includes(:user)
  end

  def edit
  end

  def update
    @code.update(code_params)
    if @code.save
      redirect_to root_path
    else
      render :edit
    end
  end

  def destroy
    redirect_to root_path if @code.destroy
  end

  private

  def code_params
    params.require(:code).permit(:image, :message, :code_title, :brand_name).merge(user_id: current_user.id)
  end

  def set_code
    @code = Code.find(params[:id])
  end
end
