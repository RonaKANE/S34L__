class UsersController < ApplicationController

  def index
  @users = User.all
  end

  def create
  User.create user_id: params[:user_id], 
  first_name: params[:first_name], 
  last_name: params[:last_name], 
  service: params[:service], 
  user_tel: params[:user_tel], 
  user_mail: params[:user_mail], 
  office: params[:office], 
  certificate_name: params[:certificate_name], 
  password: params[:password]
  redirect_to "/users"
  end
end
