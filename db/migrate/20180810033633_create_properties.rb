class CreateProperties < ActiveRecord::Migration[5.2]
  def change
    create_table :properties do |t|
      t.integer :full_property_id
      t.integer :lga_code
      t.string :council_property_no
      t.decimal :lat
      t.decimal :lon

      t.timestamps
    end
  end
end
