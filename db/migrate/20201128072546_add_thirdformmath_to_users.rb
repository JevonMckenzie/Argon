class AddThirdformmathToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :thirdformmath, :boolean
  end
end
