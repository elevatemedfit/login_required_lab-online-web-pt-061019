class SessionsController < ApplicationController

  def new
  end

  def create
    if
      params[:username].nil? or params[:username].empty?
      redirect_to '/sessions/new'
    else
      session[:username] = params[:username]
      redirect_to '/'
  end
  end
end
