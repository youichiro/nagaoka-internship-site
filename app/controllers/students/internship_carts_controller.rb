class Students::InternshipCartsController < ApplicationController
  before_action :authenticate_student!
  before_action :validate_student!

  def create
    @internship = Internship.find(params[:internship_id])
    @cart = InternshipCart.new(student: current_student, internship: @internship)

    if @cart.save
      redirect_to request.referer, notice: "インターンシップをお気に入りしました. マイページから確認できます."
    else
      redirect_to request.referer, alert: "インターンシップをお気に入りできませんでした"
    end
  end

  def destroy
    @cart = InternshipCart.find(params[:id])
    @cart.destroy
    redirect_to request.referer, notice: "お気に入りから削除しました"
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
