class AddFourthformmathToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :fourthformmath, :boolean
  end
end
