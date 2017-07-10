class ChangeRoleToRoleIdForTechnician < ActiveRecord::Migration[5.0]
  def change
    change_table "technicians" do |t|
      t.remove "role"
      t.integer "role_id"
    end
  end
end
