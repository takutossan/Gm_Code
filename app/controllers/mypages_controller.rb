class MypagesController < ApplicationController
  before_action :authenticate_user!, only: :show

  def show
    user = User.find(params[:id])
    @id = user.id
    @name = user.name
    @codes = user.codes
    @birthday = user.birthday
    @favorite_brand = user.favorite_brand
    @comment = user.comment
    @twitter = user.twitter
    @instagram = user.instagram
  end
end
