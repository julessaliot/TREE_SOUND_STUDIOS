class CreateStudios < ActiveRecord::Migration[7.0]
  def change
    create_table :studios do |t|
      t.integer :owner_id
      t.string :name
      t.string :description
      t.integer :price_per_hour
      t.boolean :is_soundproof
      t.string :location
      t.integer :max_occupancy

      t.timestamps
    end
  end
end
