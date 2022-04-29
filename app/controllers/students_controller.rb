class StudentsController < ApplicationController
  before_action :authenticate_student!

  def show
    @student = Student.find(params[:id])
  end
end
