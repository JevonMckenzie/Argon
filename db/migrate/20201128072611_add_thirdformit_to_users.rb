class AddThirdformitToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :thirdformit, :boolean
  end
end
