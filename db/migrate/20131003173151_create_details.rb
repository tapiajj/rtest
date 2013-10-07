class CreateDetails < ActiveRecord::Migration
  def change
    create_table :details do |t|
      t.integer :product_id
      t.string :title
      t.string :short_desc
      t.text :description
      t.string :picture
      t.float :price
      t.integer :limit

      t.timestamps
    end
    add_index("details","product_id")
  end
end
