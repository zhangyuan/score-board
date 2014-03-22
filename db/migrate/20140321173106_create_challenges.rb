class CreateChallenges < ActiveRecord::Migration
  def change
    create_table :challenges do |t|
      t.integer :index
      t.string :title
      t.string :answer_token
      t.string :description

      t.timestamps
    end
  end
end
