class CreateSponsors < ActiveRecord::Migration
  def change
    create_table :sponsors do |t|
      t.string :name
      t.boolean :verified
      t.string :review
      t.references :university
      t.string :job

      t.timestamps
    end
    add_index :sponsors, :university_id
  end
end
