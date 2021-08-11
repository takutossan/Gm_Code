class CodesController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create]

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

    private
  def code_params
    params.require(:code).permit(:image, :message, :height, :age).merge(user_id: current_user.id)
  end
end
