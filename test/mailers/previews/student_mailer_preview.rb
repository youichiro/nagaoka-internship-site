class StudentMailerPreview < ActionMailer::Preview
  def course_order_confirm_mail
    StudentMailer.with(student: Student.first, course: Course.first).course_order_confirm_mail
  end

  def internship_order_confirm_mail
    StudentMailer.with(student: Student.first, internship: Internship.first).internship_order_confirm_mail
  end
end
