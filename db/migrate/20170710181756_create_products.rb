class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :title
      t.string :artist
      t.string :description
      t.string :image
      t.decimal :price

      t.timestamps
    end
  end
end
