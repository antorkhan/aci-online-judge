class CreateProgrammingLanguages < ActiveRecord::Migration[6.0]
  def change
    create_table :programming_languages do |t|
      t.string :name
      t.string :version
      t.boolean :is_active, default: true, comment: 'Check if language is active'

      t.timestamps
    end
  end
end
