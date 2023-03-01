class RemoveImageFromStudios < ActiveRecord::Migration[7.0]
  def change
    remove_column :studios, :image, :string
  end
end
