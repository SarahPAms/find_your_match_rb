class AdminsController < ApplicationController
  before_action :authenticate_user!
  before_action :verify_admin

  def index
    @matches = Match.order('date ASC')
    @users = User.all
    @dates = [3.days.from_now, 4.days.from_now, 6.days.from_now, 7.days.from_now, 8.days.from_now, 10.days.from_now]

  end

  def create
  end

  def show
    user = User.find(params[:id])
    user.admin = !user.admin
    user.save
    redirect_to admins_path, notice: "User was updated"
  end

  def verify_admin
    if current_user.admin == false
      redirect_to students_path
    end
  end
end
    private
    arr = [1, 2, 3, 4, 5, 6, 7]


      if (arr.count % 2) == 1
        arr.push(nil)
      end

      arr_copy1 = arr ;
      arr_copy2 = arr ;

      arr_copy1 = arr_copy1.shuffle
      arr_copy2 = arr_copy2.shuffle

      while(arr_copy1.count > (arr.count / 2))
        name1 = arr_copy1.pop
        name2 = arr_copy2[0] == name1 ? arr_copy2.pop : arr_copy2.shift
      end
