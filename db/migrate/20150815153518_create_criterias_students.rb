class CreateCriteriasStudents < ActiveRecord::Migration
  def change
      create_table :criterias_students do |t|

      t.references :student
      t.references :criteria
      t.timestamps
    end
  end
end
