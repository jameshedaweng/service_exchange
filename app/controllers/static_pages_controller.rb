class StaticPagesController < ApplicationController
  def index
  end

  def dashboard
    unless user_signed_in?
      redirect_to root_path, notice: 'You must sign in to see this page.'
    end
  end
end
