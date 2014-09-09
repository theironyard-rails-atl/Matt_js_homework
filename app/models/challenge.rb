class Challenge < ActiveRecord::Base
  belongs_to :user
  belongs_to :hangman
  belongs_to :challenged_user, primary_key: "challenged_user", class_name: "User"




end
