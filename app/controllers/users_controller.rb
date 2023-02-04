class UsersController < ApplicationController
  before_action :set_user

  def edit
  end

  def update
    @user.update_without_current_password(user_params)
    redirect_to mypage_users_url
  end

  def mypage
  end

  def edit_address
  end

  private
    def set_user
      @user = current_user
    end

    def user_params
      params.permit( :first_name, :last_name, :first_name_kana, :last_name_kana, :nickname, :gender, :birth_date, :avatar_image, :admin, :email, :phone, :password, :password_confirmation)
    end
end
