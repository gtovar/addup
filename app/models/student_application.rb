class StudentApplication < ActiveRecord::Base
  attr_accessible :answer1, :answer2, :answer3, :cause, :crowdfundig_goal_usd, :current_year, :degree, :email, :field_of_study, :first_name, :last_name, :length_of_program, :link_of_video, :link_or_attachment_of_photos, :nationality, :student_sponsor_for_the_community_service_project, :students_university_id_reference, :time_frame, :total_annual_cost_of_attendance, :university, :univesity_back_account
end
