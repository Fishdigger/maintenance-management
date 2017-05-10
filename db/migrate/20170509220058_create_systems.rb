class CreateSystems < ActiveRecord::Migration[5.0]
  def change
    create_table :systems do |t|
      t.string :part_number
      t.string :serial_number
      t.string :name
      t.integer :vendor_id
      t.date :install_date
      t.date :decommission_date
      t.string :location
      t.string :type
      t.decimal :cost

      t.timestamps
    end
  end
end
