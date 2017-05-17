class FixColumnName < ActiveRecord::Migration
  def change
    rename_column :owners, :type, :real_state_type
  end
end
