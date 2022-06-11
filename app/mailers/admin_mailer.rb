class AdminMailer < ApplicationMailer
  def send_mail
    @emails = params[:emails]
    @subject = params[:subject]
    @body = params[:body]
    mail(to: @emails, subject: @subject)
  end
end
