class Students::InternshipCartsController < ApplicationController
  before_action :authenticate_student!
  before_action :validate_student!

  def destroy
    @cart = InternshipCart.find(params[:id])
    @cart.destroy
    redirect_to student_internships_url(@cart.student)
  end

  private

  def validate_student!
    redirect_to root_path, alert: "権限がありません" if params[:student_id].to_i != current_student.id
  end
end
