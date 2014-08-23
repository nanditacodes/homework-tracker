class AuthController < ApplicationController
  def login
    @user = User.all
  end

  def verify
    user = User.find_by(name: "#{params[:name]}")

    if user && params[:password] == "password"
      session[:user_id] = user.id
      redirect_to show_path if user.user_type == "S"
      redirect_to show_all_path if user.user_type == "T"
    else
      render :login
    end
  end

end
