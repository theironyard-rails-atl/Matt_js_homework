class CreateChallenges < ActiveRecord::Migration
  def change
    create_table :challenges do |t|
      t.integer :user_id
      t.integer :challenger_id
      t.integer :hangman_id

      t.timestamps
    end
  end
end
