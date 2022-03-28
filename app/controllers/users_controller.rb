class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
    @translated_gender = gender_transltate(@user.gender)
  end

  private

  def gender_transltate(gender)
    case gender
    when 'male'
      'Masculino'
    when 'female'
      'Feminino'
    else
      'Não especificado'
    end
  end
end
