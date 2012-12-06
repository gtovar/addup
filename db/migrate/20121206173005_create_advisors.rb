class CreateAdvisors < ActiveRecord::Migration
  def change
    create_table :advisors do |t|
      t.string :photo
      t.string :name
      t.string :job
      t.string :quote
      t.string :email
      t.string :jobp
      t.text :feedback

      t.timestamps
    end
  end
end
