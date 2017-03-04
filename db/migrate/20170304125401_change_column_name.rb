class ChangeColumnName < ActiveRecord::Migration[5.0]
  def change
    rename_column :votes, :choice, :candidate
  end
end
