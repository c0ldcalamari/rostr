class CreateCriterias < ActiveRecord::Migration
  def change
    create_table :criterias do |t|
      t.string :name
      t.integer :rating
      t.integer :category

      t.references :event
      t.timestamps
    end
  end
end
