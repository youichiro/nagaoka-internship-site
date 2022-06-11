class AdminMailer < ApplicationMailer
  def send_mail
    @email = params[:email]
    @subject = params[:subject]
    @body = params[:body]
    mail(to: @email, subject: @subject)
  end
end
