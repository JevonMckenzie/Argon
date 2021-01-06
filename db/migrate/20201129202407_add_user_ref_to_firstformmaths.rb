class AddUserRefToFirstformmaths < ActiveRecord::Migration[6.0]
  def change
    add_reference :firstformmaths, :user, null: false, foreign_key: true
  end
end
