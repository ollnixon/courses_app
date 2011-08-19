class SessionsController < ApplicationController
  
  def new 
  end

  def create
    user = User.find_by_email(params[:email])

    #if user && user.authenicate(params[:password])
    if user.try(:authenticate, params[:password])
      session[:user_id] = user.id
      redirect_to root_path, :notice => 'Logged in!'
    else
      flash.now[:notice] = "Try again"
      render :new
    end
  end

  def destroy
    session.clear
    redirect_to root_path
  end
end
