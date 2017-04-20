class StudentsController < ApplicationController
  before_action :set_current_user, only: [:show, :new, :create]
  def index

    @matches= Match.all
    @match = Match.where(date: Date.today, user: current_user.id)

    if true
      @users = User.where.not("id =?", current_user.id)
      @old_matches = Match.where("user_id =? AND date < ?", current_user.id, Date.today)

      @user_ids = []
      @users.each do |user|
        @user_ids.push(user.id)
      end

      @match_names = []
      @old_matches.each do | match |
        user = User.where(name: match.matched_user)
        @match_names.push(user.id)
      end

      @final_draw = @user_ids - @match_names
      @random_id = @final_draw.sample
      selected_user = User.where("id =?", @random_id).pluck(:name)


      inserted_match=Match.create(date: Date.today, user_id: current_user.id, matched_user: selected_user[0])


    else
      @monkey ="tree"

    end
  end

  def show
    @match = @user.matches.find(params[:id])
  end

  private
  def set_current_user
    @user = User.find(params[:id])
  end

end
