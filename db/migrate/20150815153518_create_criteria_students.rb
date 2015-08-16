class CreateCriteriaStudents < ActiveRecord::Migration
  def change
      create_table :criteria_students do |t|

      t.references :student
      t.references :criteria
      t.timestamps
    end
  end
end
