class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :hangmen
  has_many :challenges
  has_many :hangmen_challenges, through: :challenges, source: :hangman, foreign_key: "challenged_user"

  def challenge!(user, answer)
    created = self.hangmen.new answer: answer
    if created.save!
      challenge = challenges.new
      challenge[:challenged_user] = user.id
      challenge[:hangman_id] = created.id
      challenge.save!
    end

  end

end
