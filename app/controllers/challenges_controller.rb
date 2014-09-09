class ChallengesController < ApplicationController


  def index
    @users = User.all
    #@challenges = current_user.hangmen_challenges.all
    @challenge = current_user.challenges.new
  end


  def show

  end


  def new

  end


  def create
    binding.pry
    user = params[:user]
    answer = params[:answer]
    if current_user.challenge!(user, answer)
      redirect_to challenges_path
    else
      redirect_to :back, alert[:failure] = "Sowwy sukka"
    end
  end


  def edit

  end


  def update

  end


end
