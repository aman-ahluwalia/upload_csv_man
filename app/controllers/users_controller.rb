class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def import
    User.my_import(params[:file])
    redirect_to root_url, notice: "Successfully Imported Data!!!"
  end
end
