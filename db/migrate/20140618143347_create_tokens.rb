class CreateTokens < ActiveRecord::Migration
  def change
    create_table :tokens do |t|
      t.string :token_value
      t.string :challenge_index

      t.timestamps
    end
  end
end
