class InternshipsController < ApplicationController
  before_action :set_q, only: [:index, :search]

  def index
    @internships = Internship.where(is_public: true)
  end

  def show
    @internship = Internship.find(params[:id])
    @cart = InternshipCart.find_by(student: current_student, internship: @internship)
    @order = InternshipOrder.find_by(student: current_student, internship: @internship)
  end

  def search
    console
    @internships = @q.result
  end

  private

  def set_q
    @q = Internship.ransack(params[:q])
  end
end
