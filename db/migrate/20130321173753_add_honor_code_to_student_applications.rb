class AddHonorCodeToStudentApplications < ActiveRecord::Migration
  def change
    add_column :student_applications, :honor_code, :boolean
  end
end
