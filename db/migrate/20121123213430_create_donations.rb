class CreateDonations < ActiveRecord::Migration
  def change
    create_table :donations do |t|
      t.references :student_application
      t.string :status
      t.string :transaction_id
      t.decimal :mc_gross
      t.datetime :received_at
      t.string :invoice
      t.string :currency
      t.text :params

      t.timestamps
    end
  end
end
