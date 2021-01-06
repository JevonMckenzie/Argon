class AddFirstformitToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :firstformit, :boolean
  end
end
