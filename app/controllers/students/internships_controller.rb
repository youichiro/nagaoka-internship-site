class Students::InternshipsController < ApplicationController
  before_action :authenticate_student!
  before_action :validate_student!

  def index
    @carts = InternshipCart.where(student: current_student)
    @orders = InternshipOrder.where(student: current_student)
  end

  private

  def validate_student!
    redirect_to root_path, alert: "権限がありません" if params[:student_id].to_i != current_student.id
  end

  def internship_cart_params
    params.require(:internship_cart).permit(
      :student_id, :internship_id
    )
  end
end
