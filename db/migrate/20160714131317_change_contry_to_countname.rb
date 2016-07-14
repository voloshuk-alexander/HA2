class ChangeContryToCountname < ActiveRecord::Migration
  def change
     add_column :hotels, :count_name, :string
      remove_column :hotels, :country
  end
end
