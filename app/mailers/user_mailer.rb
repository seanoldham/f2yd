class UserMailer < ActionMailer::Base
  default from: "admin@formstoyourdoor.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.reset_password_email.subject
  #
  def reset_password_email(user)
    @user = user
    @url = edit_password_reset_url(user.reset_password_token)
    mail(:to      => user.email,
         :subject => "Your Password Has Been Reset")
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.activation_needed_email.subject
  #
  def activation_needed_email(user)
    @user = user
    @url = "http://www.formstoyourdoor.com/users/#{user.activation_token}/activate"
    mail(:to => user.email,
         :subject => "Welcome to Forms to Your Door")
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.activation_success_email.subject
  #
  def activation_success_email(user)
    @user = user
    @url = "http://www.formstoyourdoor.com/login"
    mail(:to => user.email,
         :subject => "Activation Successful")
  end
end
