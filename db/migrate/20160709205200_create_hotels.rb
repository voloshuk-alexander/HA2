class CreateHotels < ActiveRecord::Migration
  def change
    create_table :hotels do |t|
      t.string  :name
      t.boolean :breakfast
      t.text    :description
      t.integer :price
      t.string  :count_name
      t.string  :state
      t.string  :city
      t.string  :street
      t.timestamps null: false
    end
    add_index :hotels, :name
    add_index :hotels, :price
    add_index :hotels, :country
    add_index :hotels, :state
    add_index :hotels, :city
  end
end
