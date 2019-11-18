class SecretsController < ApplicationController
  def show
    if current_user.include? :name
      render :show
    else
      redirect_to '/login'
    end
  end

end
