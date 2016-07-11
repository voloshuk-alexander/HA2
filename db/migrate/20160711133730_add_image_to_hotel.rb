class AddImageToHotel < ActiveRecord::Migration
  def change
    add_column :hotels, :photo, :string
  end
end
