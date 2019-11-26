class StudentMailer < ApplicationMailer
  default from: "abinashshaw16@gmail.com"
  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.student_mailer.students_record.subject
  #
  def students_record(students)
    @students = students
    # give the receiver's mail address below mail will be sent from the mail id abinashshaw16@gmail.com and 
    # i have set up a specific password for the rails app learn_rails to overcome the issue of less secure 
    # app. go to https://guides.rubyonrails.org/action_mailer_basics.html#action-mailer-configuration-for-gmail
    # to know more
    mail to: "abinashshaw16@gmail.com", subject: "Students Record ordered by name"
  end
end
