class CreateAttributes < ActiveRecord::Migration
  def change
    create_table :attributes do |t|
      t.integer :product_id
      t.string :title
      t.string :short_desc
      t.text :description
      t.string :picture
      t.float :price
      t.integer :limit

      t.timestamps
    end
    add_index("attributes","product_id")
  end
end
