class UsersController < ApplicationController

def index
  @user = current_user
  @rooms = Room.all.sorted
end

 def show
  @user = User.find(params[:id])
  @rooms = Room.all
 end

 end
