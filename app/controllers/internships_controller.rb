class InternshipsController < ApplicationController
  def index
    @q = Internship.where(is_public: true).ransack(params[:q])
    @internships = @q.result
  end

  def show
    @internship = Internship.find(params[:id])
    @cart = InternshipCart.find_by(student: current_student, internship: @internship)
    @order = InternshipOrder.find_by(student: current_student, internship: @internship)
  end
end
