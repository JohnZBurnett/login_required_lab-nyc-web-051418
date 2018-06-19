class SessionsController < ApplicationController
  def index
  end

  def new
  end

  def create
    if params[:name] == nil || params[:name] == ""
      redirect_to login_path
    else
      session[:name] = params[:name]
      redirect_to 'sessions#show'
    end
  end

  def show
  end

  def destroy
    if current_user
      session[:name] = nil
    end
    redirect_to 'sessions#new'
  end

end
