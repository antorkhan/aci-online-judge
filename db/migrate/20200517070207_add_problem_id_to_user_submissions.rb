class AddProblemIdToUserSubmissions < ActiveRecord::Migration[6.0]
  def change
    add_column :user_submissions, :problem_id, :integer, after: 'code'
  end
end
