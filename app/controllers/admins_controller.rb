class AdminsController < ApplicationController

  def index
    @matches = Match.all
  end

  def show
  end

  def update
  end

end
