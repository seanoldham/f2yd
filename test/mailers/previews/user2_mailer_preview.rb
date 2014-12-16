# Preview all emails at http://localhost:3000/rails/mailers/user2_mailer
class User2MailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/user2_mailer/activation_needed_email
  def activation_needed_email
    User2Mailer.activation_needed_email
  end

  # Preview this email at http://localhost:3000/rails/mailers/user2_mailer/activation_success_email
  def activation_success_email
    User2Mailer.activation_success_email
  end

end
