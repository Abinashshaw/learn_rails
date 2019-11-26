class StudentsController < ApplicationController
  def index
    @students = Student.all.order(name: :asc).limit(50)
    if StudentMailer.students_record(@students).deliver
      flash[:notice] = "Mail has been sent"
    end
  end
end
