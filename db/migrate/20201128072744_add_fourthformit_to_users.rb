class AddFourthformitToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :fourthformit, :boolean
  end
end
