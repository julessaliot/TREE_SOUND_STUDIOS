class AddUserIdToStudio < ActiveRecord::Migration[7.0]
  def change
    add_reference :studios, :user, null: false, foreign_key: true
  end
end
