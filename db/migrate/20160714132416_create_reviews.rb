class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.text :rew
      t.timestamps null: false
    end
  end
end
