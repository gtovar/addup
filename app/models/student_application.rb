class StudentApplication < ActiveRecord::Base
has_many :donations  attr_accessible :answer1, :answer2, :answer3, :cause, :crowdfundig_goal_usd, :current_year, :degree, :email, :field_of_study, :first_name, :last_name, :length_of_program, :link_of_video, :link_or_attachment_of_photos, :nationality, :name_sponsor, :job, :quote, :email_sponsor, :students_university_id_reference, :time_frame, :total_annual_cost_of_attendance, :university, :univesity_bank_account, :method_of_payment, :pay_of_the_order_of, :name_check,:adress_check, :zipcode_check, :state_check,:city_check,:avatar_id, :name_of_university, :email_of_confirmation, :name_of_bank, :bank_account, :abbarouting, :swift, :student_reference_id,:p1,:p2,:p3,:p4,:p5,:p6,:p7,:p8,:p9,:p10, :student_application_id



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


 #Basic Validates
validates :last_name, :first_name, :nationality, :email, :university, :degree, :field_of_study, :current_year, :length_of_program, :crowdfundig_goal_usd, :total_annual_cost_of_attendance, :time_frame, :presence => true

#Files Validates
validates :p1,:p2, :p3,:p4,:p5,:p6,:p7, :presence => true
validates :link_of_video, :presence => {:message => "Video is require"}

#Question
validates  :cause, :name_sponsor, :job, :quote, :answer1, :answer2, :presence => true

#Payment
validates :method_of_payment, :presence => {:message => "unselected"},
 :if => Proc.new {|a| a.method_of_payment == nil}

  #---Check
 validates :pay_of_the_order_of,:name_check,  :adress_check, :zipcode_check,:state_check,:city_check, :presence => true,
 :if => Proc.new {|a| a.method_of_payment == 1}

  #---Wire Tranfer
validates :univesity_bank_account, :name_of_university,:email_of_confirmation, :name_of_bank, :bank_account,:abbarouting,:swift,:student_reference_id, :presence => true,
 :if => Proc.new {|a| a.method_of_payment == 2}

validates :students_university_id_reference, :answer3, :presence => true


end