class ToppagesController < ApplicationController
  def index
    if logged_in?
      @user = current_user
      @tasks = current_user.tasks.order(created_at: :desc).page(params[:page]).per(5)
    end
  end
end
