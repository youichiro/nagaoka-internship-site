class EmployeeMailer < ApplicationMailer
  def course_order_confirm_mail
    @employee = params[:employee]
    @course = params[:course]
    mail(to: @employee.email, subject: '【長岡のしごと場】講座のお申し込み内容のご連絡')
  end
end
