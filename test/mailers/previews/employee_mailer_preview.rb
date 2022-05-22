class EmployeeMailerPreview < ActionMailer::Preview
  def course_order_confirm_mail
    EmployeeMailer.with(employee: Employee.first, course: Course.first).course_order_confirm_mail
  end
end
