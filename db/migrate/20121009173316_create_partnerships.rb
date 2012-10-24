class CreatePartnerships < ActiveRecord::Migration
  def change
    create_table :partnerships do |t|
      t.string :name
      t.string :url_logo

      t.timestamps
    end
  end
end
