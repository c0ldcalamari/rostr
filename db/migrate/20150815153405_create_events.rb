class CreateEvents < ActiveRecord::Migration
  def change
      create_table :events do |t|
      t.string :title
      t.boolean :active

      t.references :organizer
      t.timestamps
    end
  end
end
