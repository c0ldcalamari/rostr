class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :name
      t.integer :rating
      t.integer :subject
      t.references :event
      t.timestamps
    end
  end
end
