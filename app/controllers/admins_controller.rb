class AdminsController < ApplicationController

  def index
    @matches = Match.all
    @users = User.all
    @dates = [3.days.from_now, 4.days.from_now, 6.days.from_now, 7.days.from_now, 8.days.from_now, 10.days.from_now]

  end

  def create
    @monkey = boo_rails
  end

  def show
    user = User.find(params[:id])
    user.admin = !user.admin
    user.save
    redirect_to admins_path, notice: "User was updated"
  end

  def update
  end
end
    private
    
