class CreateDonations < ActiveRecord::Migration
  def change
    create_table :donations do |t|
      t.integer :params
      t.references :student_id
      t.string :status
      t.integer :transaction_id
      t.timestamps
    end
  end
end
