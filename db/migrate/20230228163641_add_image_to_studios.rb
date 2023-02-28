class AddImageToStudios < ActiveRecord::Migration[7.0]
  def change
    add_column :studios, :image, :string
  end
end
