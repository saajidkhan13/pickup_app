class SessionsController < ApplicationController
  skip_before_action :authorized, only: [:new, :create]

  def new
  end

  def create
    @user = User.find_by(email: params[:email])

    if @user && @user.authenticate(params[:password])
      login_user(@user)
      flash[:notice] = "Login Successful! Welcome #{@user.email}"
      redirect_to @user
    else
      flash[:notice] = 'Invalid email or password!'
      redirect_to login_path
    end
  end

  def destroy
    session.delete(:user_id)
    flash[:notice] = 'Logout Successful'
    redirect_to login_path
  end
end
