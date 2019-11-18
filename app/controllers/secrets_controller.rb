class SecretsController < ApplicationController

  before_action :require_login

  def show
    if current_user.include? :name
      render :show
    else
      redirect_to '/login'
    end
  end

  private
  def require_login
    return head(:forbidden) unless session.include? :name
  end

end
