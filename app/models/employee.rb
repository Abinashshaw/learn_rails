class Employee < ApplicationRecord
  def self.to_pdf
    record = Prawn::Document.new do |pdf|
      self.all.each do |employee|
        pdf.text "name: #{employee.name}"
        pdf.text "email: #{employee.email}"
        pdf.text "phone_number: #{employee.phone_number}"
        pdf.text "\n------------------------------------------\n"
      end
    end
    record.render
    # filename: "Employees_record.pdf",
    # type: "application/pdf",
    # disposition: "inline"
  end
end
