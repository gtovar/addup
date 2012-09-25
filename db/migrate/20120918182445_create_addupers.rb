class CreateAddupers < ActiveRecord::Migration
  def change
    create_table :addupers do |t|
      t.string :name

      t.timestamps
    end
  end
end
