class CoursesController < ApplicationController
  def index
    @courses = Course.all
  end

  def show
    @course = Course.find(params[:id])
    @employee_order = EmployeeCourseOrder.find_by(employee: current_employee, course: @course)
    @student_order = StudentCourseOrder.find_by(student: current_student, course: @course)
  end
end
