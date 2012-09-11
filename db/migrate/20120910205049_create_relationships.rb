class CreateRelationships < ActiveRecord::Migration
  def change
    create_table :relationships do |t|
      t.integer :university_id
      t.integer :career_id

      t.timestamps
    end
  end
end
