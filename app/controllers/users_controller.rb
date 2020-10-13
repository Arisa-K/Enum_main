class UsersController < ApplicationController
  def index
    #書き加える部分ここから
    if params[:search] == nil
      @users= User.all
    elsif params[:search] == ''
      @users= User.all
    else
      #部分検索
      @users = User.where("department LIKE ? ",'%' + params[:search] + '%')
    end
    #ここまで
  end
  
  def show
    @user = User.find(params[:id]) #追記
    @user_seasons =Season.where(user_id: @user.id)
  end
end
