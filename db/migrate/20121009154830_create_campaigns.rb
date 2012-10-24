class CreateCampaigns < ActiveRecord::Migration
  def change
    create_table :campaigns do |t|
      t.references :student
      t.integer :goal
      t.date :timer

      t.timestamps
    end
    add_index :campaigns, :student_id
  end
end
