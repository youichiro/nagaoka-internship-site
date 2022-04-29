class StudentsController < ApplicationController
  before_action :authenticate_student!
  before_action :set_student, only: [:show]

  def show
  end

  private

  def set_student
    redirect_to root_path, alert: "権限がありません" if params[:id].to_i != current_student.id
    @student = Student.find(current_student.id)
  end
end
