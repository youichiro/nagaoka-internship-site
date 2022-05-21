class Employees::CourseOrdersController < ApplicationController
  before_action :authenticate_employee!
  before_action :validate_employee!

  def index
    @employee = Employee.find(params[:employee_id])
    @employee_course_orders = EmployeeCourseOrder.where(employee: @employee)
  end

  def destroy
    @order = EmployeeCourseOrder.find(params[:id])
    @order.destroy
    redirect_to employee_course_orders_url(@order.employee), notice: "講座の申し込みをキャンセルしました"
  end

  private

  def validate_employee!
    redirect_to root_path, alert: "権限がありません" if params[:employee_id].to_i != current_employee.id
  end

  def course_order_params
    params.require(:employee_course_order).permit(
      :employee_id, :course_id
    )
  end
end
