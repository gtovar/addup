class CreateStudentApplications < ActiveRecord::Migration
  def change
    create_table :student_applications do |t|
      t.string :last_name
      t.string :first_name
      t.string :nationality
      t.string :email
      t.string :university
      t.integer :degree
      t.string :field_of_study
      t.string :current_year
      t.string :length_of_program
      t.decimal :crowdfundig_goal_usd
      t.decimal :total_annual_cost_of_attendance
      t.date :time_frame
      t.string :link_or_attachment_of_photos
      t.string :link_of_video
      t.string :cause
      t.string :student_sponsor_for_the_community_service_project
      t.text :answer1
      t.text :answer2
      t.integer :univesity_back_account
      t.string :students_university_id_reference
      t.boolean :answer3

      t.timestamps
    end
  end
end
