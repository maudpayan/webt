require 'test_helper'

class MessageMailerTest < ActionMailer::TestCase

  test "contact_me" do
    message = Message.new name: 'anna',
                          email: 'anna@example.org',
                          company: 'tarmac'
                          body: 'hello, how are you doing?'

    email = MessageMailer.contact_me(message)

    assert_emails 1 do
      email.deliver_now
    end

    assert_equal 'Message from www.murdo.ch', email.subject
    assert_equal ['maudpayan@hotmail.fr'], email.to
    assert_equal ['anna@example.org'], email.from
    assert_match /hello, how are you doing?/, email.body.encoded
  end
end

# require 'test_helper'

# class MessageMailerTest < ActionMailer::TestCase
#   test "contact_me" do
#     mail = MessageMailer.contact_me
#     assert_equal "Contact me", mail.subject
#     assert_equal ["to@example.org"], mail.to
#     assert_equal ["from@example.com"], mail.from
#     assert_match "Hi", mail.body.encoded
#   end

# end
