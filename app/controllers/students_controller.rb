class StudentsController < ApplicationController

  def index
    @matches = Match.all
    #where current user is user and date is < today
    @match = Match.where('DATE(date) = ?', Date.today)
  end

  def show
    @match = Match.find do |match|
      match.user == current_user || match.matched_user == current_user
    end

    @matched_student = if match.user == current_user
      match.matched_user
    else
      match.user
    end
  end


end
