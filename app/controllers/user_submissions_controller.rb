class UserSubmissionsController < ApplicationController

  def create
    @user_submission = UserSubmission.new(user_submission_params
                                              .merge(user_id: session[:user_id],
                                                     problem_id: 1,
                                                     verdict_id: 4,
                                                     processed: false))
    if @user_submission.save!
      puts system("echo '#{@user_submission.code}' > code.cpp && g++ -o code code.cpp && ./code > output.cpp")

      redirect_to root_path, notice: 'Submission was successfully created.'
    end

    # @user_submission.user_id = session[:user_id]
    # @user_submission.verdict_id = 4

  end

  private

  def user_submission_params
    params.require(:user_submission).permit(:code, :programming_language_id)
  end

end
