class CoursesController < ApplicationController
  def index
    @courses = Course.all
  end

  def show
    @course = Course.find(params[:id])
    @order = EmployeeCourseOrder.find_by(employee: current_employee, course: @course)
  end
end
