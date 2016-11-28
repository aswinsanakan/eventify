require 'test_helper'

class NotificationTest < ActionMailer::TestCase
  test "user_registered" do
    mail = Notification.user_registered
    assert_equal "User registered", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
