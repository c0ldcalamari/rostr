  class CreateEvents < ActiveRecord::Migration
  def change
      create_table :events do |t|
      t.string :title
      t.string :description
      t.boolean :created
      t.boolean :started
      t.boolean :finished
      t.string :sub1, :sub2, :sub3, :sub4, :sub5

      t.references :organizer
      t.timestamps
    end
  end
end
