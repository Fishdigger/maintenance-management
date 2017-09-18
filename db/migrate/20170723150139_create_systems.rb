class CreateSystems < ActiveRecord::Migration[5.0]
  def change
    create_table :systems do |t|
      t.string :part_number
      t.string :serial_number
      t.string :name
      t.integer :vendor_id
      t.date :install_date
      t.string :family
      t.decimal :cost
      t.integer :location_id

      t.timestamps
    end
  end
end
