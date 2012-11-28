class CreateStudentApplications < ActiveRecord::Migration
  def change
    create_table :student_applications do |t|
      t.string :last_name
      t.string :first_name
      t.string :nationality
      t.string :email
      t.string :university
      t.string :degree
      t.string :field_of_study
      t.string :current_year
      t.string :length_of_program
      t.decimal :crowdfundig_goal_usd
      t.decimal :total_annual_cost_of_attendance
      t.string :time_frame
      t.string :link_or_attachment_of_photos
      t.string :link_of_video
      t.string :cause
      t.string :name_sponsor
      t.string :job
      t.string :email_sponsor
      t.string :quote
      t.text :answer1
      t.text :answer2
      t.integer :univesity_bank_account
      t.integer :method_of_payment
      t.string  :pay_of_the_order_of
      t.string  :name_check
	  t.string  :adress_check
      t.string  :zipcode_check
      t.string :state_check
	  t.string :city_check
      t.string :students_university_id_reference
      t.boolean :answer3
      t.string :p1
      t.string :p2
      t.string :p3
      t.string :p4
      t.string :p5
      t.string :p6
      t.string :p7
      t.string :p8
      t.string :p9
      t.string :p10
      t.string :student_reference_id
      t.string :name_of_university
      t.string :email_of_confirmation
      t.string :name_of_bank
      t.integer :bank_account
      t.integer :abbarouting
      t.string :swift
      t.string :campaing

      t.timestamps
    end
  end

end
