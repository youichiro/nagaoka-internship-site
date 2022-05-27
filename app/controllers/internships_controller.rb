class InternshipsController < ApplicationController
  def index
    @internships = Internship.where(is_public: true)
  end

  def show
    @internship = Internship.find(params[:id])
    @cart = InternshipCart.find_by(student: current_student, internship: @internship)
    @order = InternshipOrder.find_by(student: current_student, internship: @internship)
  end
end
