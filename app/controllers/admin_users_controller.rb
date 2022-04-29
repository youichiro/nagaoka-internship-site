class AdminUsersController < ApplicationController
  before_action :authenticate_admin_user!
  before_action :set_admin_user, only: [:show]

  def show
  end

  private

  def set_admin_user
    redirect_to root_path, alert: "権限がありません" if params[:id].to_i != current_admin_user.id
    @admin_user = AdminUser.find(current_admin_user.id)
  end
end
