class CreateUserSubmissions < ActiveRecord::Migration[6.0]
  def change
    create_table :user_submissions do |t|
      t.integer :user_id
      t.text :code
      t.integer :programming_language_id
      t.integer :verdict_id
      t.float :run_time
      t.boolean :processed

      t.timestamps
    end
  end
end
