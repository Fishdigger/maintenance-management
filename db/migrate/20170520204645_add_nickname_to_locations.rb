class AddNicknameToLocations < ActiveRecord::Migration[5.0]
  def change
    add_column :locations, :nickname, :string
  end
end
