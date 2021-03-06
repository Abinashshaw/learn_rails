require 'test_helper'

class StudentMailerTest < ActionMailer::TestCase
  test "students_record" do
    mail = StudentMailer.students_record
    assert_equal "Students record", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
