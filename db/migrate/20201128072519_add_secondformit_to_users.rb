class AddSecondformitToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :secondformit, :boolean
  end
end
