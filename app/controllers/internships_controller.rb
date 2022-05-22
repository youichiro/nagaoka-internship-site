class InternshipsController < ApplicationController
  def index
    @internships = Internship.all
  end

  def show
    @internship = Internship.find(params[:id])
    @cart = InternshipCart.find_by(student: current_student, internship: @internship)
  end
end
