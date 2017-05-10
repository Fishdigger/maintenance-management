class ChangeColumnName < ActiveRecord::Migration[5.0]
  def change
    rename_column :systems, :type, :family
  end
end
