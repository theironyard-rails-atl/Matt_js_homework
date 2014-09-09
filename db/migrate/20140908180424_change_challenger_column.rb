class ChangeChallengerColumn < ActiveRecord::Migration
  def change
    rename_column :challenges, :challenger_id, :challenged_user
  end
end
