class ProblemsController < ApplicationController
  before_action :current_user
  # before_action :return_json_if_not_logged_in
  def show
    @user_submission = UserSubmission.new
    @problem =  Problem.find(params[:id])
  end


end
