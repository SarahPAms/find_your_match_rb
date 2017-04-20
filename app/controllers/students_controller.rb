class StudentsController < ApplicationController
  before_action :set_current_user, only: [:show, :new, :create]
  def index
    @matches= Match.all
    #where current user is user and date is < today
    @match = Match.where(date: Date.today)
  end

  def show
    @match = @user.matches.find(params[:id])
  end

  private
  def set_current_user
    @user = User.find(params[:id])
  end

end
