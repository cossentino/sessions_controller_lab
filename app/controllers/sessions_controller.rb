class SessionsController < ApplicationController
  
  def new
  end

  def create
    # binding.pry
    if !params[:name] || params[:name].empty?
      redirect_to '/login'
    else
      session[:name] = name_params
      redirect_to '/'
    end
  end

  def destroy
    session[:name] = nil if !!session[:name]
    redirect_to '/'
  end

  def name_params
    params.require(:name)
  end


end
