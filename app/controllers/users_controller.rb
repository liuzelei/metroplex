class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.register
      redirect_to edit_user_path(@user), notice: "账号创建成功"
    else
      render action: "new", notice: "账号创建失败"
    end
  end

  def edit
    @user = User.find_by_id(params[:id])
  end

  def update
    @user = User.find_by_id(params[:id])
    if @user.update_attributes(params[:user])
      redirect_to vendors_path, notice: "账号更新成功"
    else
      render action: "edit", notice: "账号更新失败"
    end
  end

  private
  def user_params
    params.require(:user).permit(:username, :email, :role, :password, :password_confirmation)
  end
end