class AboutController < ApplicationController::Base
  def show
    @message = 'testing testing'
    render 'about'
  end
end