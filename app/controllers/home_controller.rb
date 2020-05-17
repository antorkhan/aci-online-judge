class HomeController < ApplicationController
  def index
    @user_submission = UserSubmission.new
  end
end
