class SecretsController < ApplicationController
  def show
    if session.include? :name
      redirect_to '/show'
    else
      redirect_to '/login'
    end
  end

end
