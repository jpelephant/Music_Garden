class Admins::AdminController < ApplicationController
  def show
    @admin = Admin.find(params[:id])
  end

  def edit
    @admin = Admin.find(params[:id])
  end

  def update
    @admin = Admin(params[:id])
    @admin.update(admin_params)
    redirect_to admin_path(@admin.id)
  end
  
  private
  def admin_params
    params.require(:admin).permit(:email, :nickname, :birthday)
  end
end
