class AdvisersController < ApplicationController

  def create
    Adviser.create(params[:adviser])
    redirect_to '/products'
  end
end
