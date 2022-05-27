class StudentMailer < ApplicationMailer
  def course_order_confirm_mail
    @student = params[:student]
    @course = params[:course]
    mail(to: @student.email, subject: '【長岡のしごと場】講座のお申し込み内容のご連絡')
  end

  def internship_order_confirm_mail
    @student = params[:student]
    @internship = params[:internship]
    mail(to: @student.email, subject: '【長岡のしごと場】インターンシップのお申し込み内容のご連絡')
  end
end
