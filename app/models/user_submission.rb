class UserSubmission < ApplicationRecord
  belongs_to :user
  belongs_to :programming_language
  belongs_to :verdict
  belongs_to :problem

end
