class EmployeesController < ApplicationController
  before_action :authenticate_employee!
  before_action :set_employee, only: [:show]

  def show
  end

  private

  def set_employee
    redirect_to root_path, alert: "権限がありません" if params[:id].to_i != current_employee.id
    @employee = Employee.find(current_employee.id)
  end
end
