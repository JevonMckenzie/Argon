class AddFirstformmathIdToComments < ActiveRecord::Migration[6.0]
  def change
  	add_column :comments, :firstformmath_id, :integer
  end
end
