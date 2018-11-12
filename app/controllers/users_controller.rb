class UsersController < ApplicationController
  before_action :find_user, only: %i[show edit update destroy]

  def index
    @users = User.all
  end

  def show
    #code
  end

  def new
    @user = User.new
  end

  def login_form
    @user = User.new
    # renders login form
  end

  def login
    @user = User.find_by(email: params[:user][:email], password: params[:user][:password])
    redirect_to @user
  end

  def create
    @user = User.create(user_params)
    redirect_to @user
  end

  def edit
    #code
  end

  def update
    @user.update(user_params)
    redirect_to @user
  end

  def destroy
    @user.destroy
  end

  private

  def find_user
    @user = User.find_by(id: params[:id])
  end

  def user_params
    params.require(:user).permit(:name, :email, :password, :age, :gender)
  end
end
