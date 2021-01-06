class AddFirstformmathToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :firstformmath, :boolean
  end
end
