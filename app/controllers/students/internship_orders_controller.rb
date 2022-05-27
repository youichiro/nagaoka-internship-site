class Students::InternshipOrdersController < ApplicationController
  before_action :authenticate_student!
  before_action :validate_student!

  def create
    @cart = InternshipCart.find(params[:internship_cart_id])
    @order = InternshipOrder.new(student: current_student, internship: @cart.internship)
    @cart.destroy!
    if @order.save
      redirect_to request.referer, notice: "インターンシップを申し込みました"
    else
      redirect_to request.referer, status: :unprocessable_entity, alert: "インターンシップを申し込めませんでした"
    end
  end

  def contact
    @order = InternshipOrder.find(params[:internship_order_id])
    @order.toggle!(:is_contacted)
  end

  private

  def validate_student!
    redirect_to root_path, alert: "権限がありません" if params[:student_id].to_i != current_student.id
  end

  def internship_order_params
    params.require(:internship_order).permit(
      :student_id, :internship_id, :is_contacted
    )
  end
end
