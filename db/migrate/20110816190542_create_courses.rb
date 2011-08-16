class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :name
      t.text :description
      t.date :start_date

      t.timestamps
    end
    add_index :courses, :start_date
  end
end
