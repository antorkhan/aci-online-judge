class HomeController < ApplicationController
  before_action :current_user
  def index
    @user_submission = @current_user.user_submission if !!@current_user
  end
end
