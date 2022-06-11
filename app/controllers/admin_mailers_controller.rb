class AdminMailersController < ApplicationController
  before_action :authenticate_admin_user!

  def form
  end

  def post
    if params[:subject].blank? or params[:body].blank?
      redirect_to request.referer, alert: '題目と本文を入力してください'
      return
    end

    case params[:group]
    when 'student' then @emails = Student.pluck(:email)
    when 'employee' then @emails = Employee.pluck(:email)
    when 'all' then @emails = Student.pluck(:email) + Employee.pluck(:email)
    else
      redirect_to request.referer, alert: '配信先の指定が不正です'
      return
    end

    AdminMailer.with(emails: @emails, subject: params[:subject], body: params[:body]).send_mail.deliver_later
    redirect_to request.referer, notice: 'メールを送信しました'
  end
end
