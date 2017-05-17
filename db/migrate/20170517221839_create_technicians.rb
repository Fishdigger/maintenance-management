class CreateTechnicians < ActiveRecord::Migration[5.0]
  def change
    create_table :technicians do |t|
      t.string :name
      t.string :employee_number
      t.decimal :payrate
      t.string :location
      t.string :role

      t.timestamps
    end
  end
end
