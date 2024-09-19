class UsersController < ApplicationController
  #一覧画面に対応するアクション
  def index
    @users = User.order(id: :asc)
  end

  def show
    @user = User.find(params[:id])
  end

  #新規作成画面に対応するアクション
  def new
    @user = User.new
  end

  #新規登録するためのアクション
  def create
    user = User.create!(user_params)
    redirect_to "/users/#{user.id}"
  end

  def update
    user = User.find(params[:id])
    user.update!(user_params)
    redirect_to "/users/#{user.id}"
  end

  def edit
    @user = User.find(params[:id])
  end
  def destroy
    user = User.find(params[:id])
    user.destroy!
    redirect_to "/users"
  end

  private

  def user_params
    params.require(:user).permit(:name, :age)
  end
end
