class AddPriceToCourses < ActiveRecord::Migration
  def change
    add_column :courses, :price, :decimal, :precision => 4, :scale => 2
    add_index :courses, :price
  end
end
