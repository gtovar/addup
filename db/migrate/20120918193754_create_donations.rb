class CreateDonations < ActiveRecord::Migration
  def change
    create_table :donations do |t|
      t.integer :money
      t.integer :student_id
      t.integer :adduper_id
      t.integer :order_id

      t.timestamps
    end
  end
end
