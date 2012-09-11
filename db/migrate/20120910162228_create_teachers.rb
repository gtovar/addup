class CreateTeachers < ActiveRecord::Migration
  def change
    create_table :teachers do |t|
      t.string :name
      t.boolean :verified
      t.string :review
      t.references :university

      t.timestamps
    end
    add_index :teachers, :university_id
  end
end
