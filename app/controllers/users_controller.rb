class UsersController < ApplicationController
  filter_resource_access

  def index
    @users = User.page(params[:page]).per(5)

    respond_to do |format|
      format.html
      format.js {}
    end
  end

  def edit
    @user = User.find(params[:id])
    @roles = Role.all
  end

  def update
    @user = User.find(params[:id])
   
    unless @user.update(user_params)
      flash[:error] = "Could not updated user."
    end
    redirect_to users_path
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
 
    redirect_to users_path
  end

  private
    def user_params
      params.require(:user).permit(:role_id)
    end
end
