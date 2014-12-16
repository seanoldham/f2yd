require 'test_helper'

class User2MailerTest < ActionMailer::TestCase
  test "activation_needed_email" do
    mail = User2Mailer.activation_needed_email
    assert_equal "Activation needed email", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

  test "activation_success_email" do
    mail = User2Mailer.activation_success_email
    assert_equal "Activation success email", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
