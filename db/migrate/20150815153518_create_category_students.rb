class CreateCategoryStudents < ActiveRecord::Migration
  def change
      create_table :category_students do |t|
      t.references :student
      t.references :category
      t.timestamps

    end
  end
end
