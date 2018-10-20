class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.new

    @user.first_name = params[:user][:first_name]
    @user.last_name = params[:user][:last_name]
    @user.email = params[:user][:email]
    @user.password = params[:user][:password]
    @user.password_confirmation = params[:user][:password_confirmation]
    @user.status = params[:user][:status]

    if @user.save
      session[:user_id] = @user.id
      redirect_to requests_url
    else
      render 'new'
    end
  end

  def show
    @user = User.find(params[:id])
  end
end
