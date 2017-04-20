class AdminsController < ApplicationController

  def index
    @matches = Match.all
    @users = User.all
  end

  def show
    user = User.find(params[:id])
    user.admin = !user.admin
    user.save
    redirect_to admins_path, notice: "User was updated"
  end

  def update
    @dates = [3.days.from_now, 4.days.from_now, 6.days_from_now, 7.days_from_now, 8.days_from_now]
  end
end
