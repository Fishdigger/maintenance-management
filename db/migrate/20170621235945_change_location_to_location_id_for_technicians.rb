class ChangeLocationToLocationIdForTechnicians < ActiveRecord::Migration[5.0]
  def change
    change_table "technicians" do |t|
      t.remove "location"
      t.integer "location_id"
    end
  end
end
