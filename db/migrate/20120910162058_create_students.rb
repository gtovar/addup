class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :name
      t.string :last_name
      t.string :paternal_surname
      t.string :maternal_surname
      t.integer :university_career_id
      t.integer :teacher_id
      t.string :country
      t.string :city
      t.integer :campaign
      t.text :question1
      t.text :question2
      t.boolean :verified
      t.integer :cost_per_year
      t.text :url_video
      t.string :url_facebook
      t.string :url_twitter
      t.string :url_university
      t.integer :current_year

      t.timestamps
    end
  end
end
