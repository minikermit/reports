require 'test_helper'

class SignupTest < ActionMailer::TestCase
  test "confirm" do
    @expected.subject = 'Signup#confirm'
    @expected.body    = read_fixture('confirm')
    @expected.date    = Time.now

    assert_equal @expected.encoded, Signup.create_confirm(@expected.date).encoded
  end

  test "sent" do
    @expected.subject = 'Signup#sent'
    @expected.body    = read_fixture('sent')
    @expected.date    = Time.now

    assert_equal @expected.encoded, Signup.create_sent(@expected.date).encoded
  end

end
