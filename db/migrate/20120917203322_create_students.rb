class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :name
      t.string :first_name
      t.string :last_name
      t.references :university
      t.references :career
      t.references :teacher
      t.references :organization
      t.references :donation
      t.string :country
      t.string :city
      t.date :campaign
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
    add_index :students, :university_id
    add_index :students, :career_id
    add_index :students, :teacher_id
    add_index :students, :organization_id
  end

  def down
    drop_table
  end

  end
