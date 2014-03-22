class CreateScores < ActiveRecord::Migration
  def change
    create_table :scores do |t|
      t.string :user_name
      t.integer :challenge_index

      t.timestamps
    end
  end
end
