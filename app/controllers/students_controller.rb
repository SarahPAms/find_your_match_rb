class StudentsController < ApplicationController
  def index
    @matches= Match.all
    #where current user is user and date is < today
    @match = Match.where('DATE(date) = ?', Date.today)
  end


end
