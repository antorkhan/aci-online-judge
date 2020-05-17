class UserSubmissionsController < ApplicationController

  def create
    @user_submission = UserSubmission.new(user_submission_params
                                              .merge(user_id: session[:user_id],
                                                     problem_id: 1,
                                                     verdict_id: 4,
                                                     processed: false))
    if @user_submission.save!
      if system("echo '#{@user_submission.code}' > code.cpp") #Write user submitted code to a file
        if system('g++ code.cpp -o code') #Compiled the file successfully
          if system('./code > output.txt') #No Run Time Error
            if FileUtils.compare_file('output.txt','solutions/1.txt') #Accepted
              @user_submission.verdict_id =1
              message = "Accepted"
            else #Wrong Answer
              @user_submission.verdict_id =2
              message = "Wrong Answer"
            end
          else # Run Time Error
            @user_submission.verdict_id =6
            message = "Accepted"
          end
        else # Compilation Error
          @user_submission.verdict_id =7
          message = "Accepted"
        end
      end
      @user_submission.processed = true
      @user_submission.save!
      redirect_to root_path, notice: message
    end

    # @user_submission.user_id = session[:user_id]
    # @user_submission.verdict_id = 4

  end

  private

  def user_submission_params
    params.require(:user_submission).permit(:code, :programming_language_id)
  end

end
