class RemoveOwneridFromStudio < ActiveRecord::Migration[7.0]
  def change
    remove_column :studios, :owner_id, :integer
  end
end
