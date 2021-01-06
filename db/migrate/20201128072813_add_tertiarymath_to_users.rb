class AddTertiarymathToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :tertiarymath, :boolean
  end
end
