class CreateFirstformmaths < ActiveRecord::Migration[6.0]
  def change
    create_table :firstformmaths do |t|
      t.text :title
      t.text :body
      t.string :url

      t.timestamps
    end
  end
end
