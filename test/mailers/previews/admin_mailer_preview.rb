class AdminMailerPreview < ActionMailer::Preview
  def send_mail
    AdminMailer.with(emails: Student.pluck(:email), subject: '題目', body: '本文').send_mail
  end
end
