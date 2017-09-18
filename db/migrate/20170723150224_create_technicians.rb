class CreateTechnicians < ActiveRecord::Migration[5.0]
  def change
    create_table :technicians do |t|
      t.string :name
      t.string :employee_number
      t.decimal :payrate
      t.integer :location_id
      t.integer :role_id

      t.timestamps
    end
  end
end
