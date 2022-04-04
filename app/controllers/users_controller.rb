class UsersController < ApplicationController
  def index
    # @users = User.all
    @users = User.page(params[:page])
  end

  def show
    @user = User.find(params[:id])
    # @translated_gender = gender_transltate(@user.gender)
  end

end
