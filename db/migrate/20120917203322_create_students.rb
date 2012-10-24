class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :first_name
      t.string :last_name
      t.references :university
      t.references :career
      t.string     :enrollment
      t.references :sponsor
      t.references :partnership
      t.string :country
      t.string :city
      t.string :phone
      t.string :email
      t.string :account
      t.text :question1
      t.text :question2
      t.boolean :verified
      t.text :url_video
      t.string :url_facebook
      t.string :url_twitter
      t.integer :current_year
      t.string :cause
      t.timestamps
    end
    add_index :students, :university_id
    add_index :students, :career_id
    add_index :students, :sponsor_id
    add_index :students, :partnership_id
  end

  def down
    drop_table
  end

  end
