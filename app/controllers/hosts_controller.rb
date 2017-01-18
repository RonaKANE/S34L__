class HostsController < ApplicationController
	IS_USED = 0
  def index
    @hosts = Host.all
  end

  def create
  @user_id = params[:user_id]
  @state = params[:state] == IS_USED
  @host = Host.create! hostname: params[:hostname], 
  serial_number: params[:serial_number], 
  reference_orange: params[:reference_orange], 
  location: params[:location], 
  project_name: params[:project_name],
  brand: params[:brand], 
  model: params[:model], 
  electricity_consumption: params[:electricity_consumption],
  certificate: params[:certificate],
  user: User.find_by_user_id("#{@user_id}"),
  state: @state
  redirect_to "/hosts"
  end
end
