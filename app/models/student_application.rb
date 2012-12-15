class StudentApplication < ActiveRecord::Base
has_many :donations
attr_accessible :answer1, :answer2, :answer3, :cause, :crowdfundig_goal_usd, :current_year, :degree, :email, :field_of_study, :first_name, :last_name, :length_of_program, :link_of_video, :link_or_attachment_of_photos, :nationality, :name_sponsor, :job, :quote, :email_sponsor, :students_university_id_reference, :time_frame, :total_annual_cost_of_attendance, :university, :univesity_bank_account, :method_of_payment, :pay_of_the_order_of, :name_check,:adress_check, :zipcode_check, :state_check,:city_check,:avatar_id, :name_of_university, :email_of_confirmation, :name_of_bank, :additional_information, :abbarouting, :swift,:p1,:p2,:p3,:p4,:p5,:p6,:p7,:p8,:p9,:p10, :student_application_id, :city

 mount_uploader :p1, ImageUploader
 mount_uploader :p2, ImageUploader
 mount_uploader :p3, ImageUploader
 mount_uploader :p4, ImageUploader
 mount_uploader :p5, ImageUploader
 mount_uploader :p6, ImageUploader
 mount_uploader :p7, ImageUploader
 mount_uploader :p8, ImageUploader
 mount_uploader :p9, ImageUploader
 mount_uploader :p10, ImageUploader

validates :p1, :p2, :p3, :p4, :first_name, :last_name,:nationality,:city, :university, :crowdfundig_goal_usd, :time_frame, :quote, :job, :name_sponsor, :presence => true

validates :answer1,:answer2, :length => {:maximum => 800}

validates :crowdfundig_goal_usd, :numericality => {:only_integer => true, :greater_than => 100, :less_than => 10000}

end
