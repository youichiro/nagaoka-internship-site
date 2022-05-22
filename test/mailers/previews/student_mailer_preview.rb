class StudentMailerPreview < ActionMailer::Preview
  def course_order_confirm_mail
    StudentMailer.with(student: Student.first, course: Course.first).course_order_confirm_mail
  end
end
