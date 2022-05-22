class Students::CourseOrdersController < ApplicationController
  before_action :authenticate_student!
  before_action :validate_student!

  def index
    @student = Student.find(current_student.id)
    @orders = StudentCourseOrder.where(student: @student)
  end

  def destroy
    @order = StudentCourseOrder.find(params[:id])
    @order.destroy
    redirect_to student_course_orders_url(@order.student), notice: "講座の申し込みをキャンセルしました"
  end

  def create
    @course = Course.find(params[:course_id])
    @order = StudentCourseOrder.new(student: current_student, course: @course)

    if @order.save
      StudentMailer.with(student: current_student, course: @course).course_order_confirm_mail.deliver_later
      redirect_to request.referer, notice: "講座を申し込みました. マイページから確認できます."
    else
      redirect_to request.referer, alert: '申し込みできませんでした'
    end
  end

  private

  def validate_student!
    redirect_to root_path, alert: "権限がありません" if params[:student_id].to_i != current_student.id
  end

  def course_order_params
    params.require(:student_course_order).permit(
      :student_id, :course_id
    )
  end
end
