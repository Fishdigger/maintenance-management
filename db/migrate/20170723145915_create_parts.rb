class CreateParts < ActiveRecord::Migration[5.0]
  def change
    create_table :parts do |t|
      t.string :part_number
      t.integer :on_hand
      t.integer :threshold
      t.string :order_url
      t.decimal :cost
      t.string :unit_of_issue
      t.string :name
      t.integer :vendor_id

      t.timestamps
    end
  end
end
