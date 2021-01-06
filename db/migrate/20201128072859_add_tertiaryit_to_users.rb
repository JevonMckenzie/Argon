class AddTertiaryitToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :tertiaryit, :boolean
  end
end
