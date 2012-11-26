
require 'csv'

puts "Importing students dummies..."
count = 0
CSV.foreach(Rails.root.join("records.csv"), headers: true) do |row|
count = count + 1
    StudentApplication.create do |s|
			s.id = row[0]
      s.last_name = row[1]
      s.first_name = row[2]
      s.nationality = row[3]
      s.email = row[4]
      s.university = row[5]
      s.degree = row[6]
      s.field_of_study = row[7]
      s.current_year = row[8]
      s.length_of_program = row[9]
      s.crowdfundig_goal_usd  = row[10]
      s.total_annual_cost_of_attendance  = row[11]
      s.time_frame  = row[12]
      s.link_or_attachment_of_photos = row[13]
      s.link_of_video = row[14]
      s.cause = row[15]
      s.name_sponsor = row[16]
      s.job = row[17]
      s.email_sponsor = row[18]
      s.quote = row[19]
      s.answer1 = row[20]
      s.answer2 = row[21]
      s.univesity_bank_account = row[22]
      s.method_of_payment = row[23]
      s.pay_of_the_order_of = row[24]
      s.name_check = row[25]
			s.adress_check = row[26]
      s.zipcode_check = row[27]
      s.state_check = row[28]
			s.city_check = row[29]
      s.students_university_id_reference = row[30]
      s.answer3 = row[31]
      s.p1 = row[32]
      s.p2 = row[33]
      s.p3 = row[33]
      s.p4 = row[34]
      s.p5 = row[35]
      s.p6 = row[36]
      s.p7 = row[37]
      s.p8 = row[38]
      s.p9 = row[39]
      s.p10 = row[40]
      s.student_reference_id = row[41]
      s.name_of_university = row[42]
      s.email_of_confirmation = row[43]
      s.name_of_bank = row[44]
      s.bank_account = row[45]
      s.abbarouting = row[46]
      s.swift = row[47]
			s.campaing = row[48]
puts count.to_s + ' ' + s.last_name + ' ' + s.first_name
    end
end
count = 0
puts "Importing donation dummies..."
CSV.foreach(Rails.root.join("donations.csv"), headers: true) do |row|
Donation.create do |d|
d.student_application_id = row[0]
d.status = row[1]
d.transaction_id = row [2]
d.mc_gross=row[3]
d.received_at=row[4]
d.invoice=row[5]
d.currency=row[6]
d.params= row[7]
puts count.to_s + ' ' + d.params
    end
end


