class StudentMailer < ApplicationMailer
  default from: "abinashshaw16@gmail.com"
  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.student_mailer.students_record.subject
  #
  def students_record(students)
    @students = students

    mail to: "abinashshaw16@gmail.com", subject: "Students Record"
  end
end
