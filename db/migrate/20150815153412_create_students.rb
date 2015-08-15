class CreateStudents < ActiveRecord::Migration
  def change
      create_table :students do |t|
      t.string :name
      t.string :password

      t.references :event
      t.timestamps
    end
  end
end
