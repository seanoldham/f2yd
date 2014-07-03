# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
Rails.application.initialize!

Rails.application.configure do
	config.action_mailer.delivery_method = :smtp
	config.action_mailer.smtp_settings = {
  enable_starttls_auto: true,
  address: 'box426.bluehost.com',
  port: 465,
  authentication: 'plain',
  user_name: 'admin@formstoyourdoor.com',
  password: 'LN8KgFDfM98D'
}
end