class CreateEvent < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.boolean :active
      t.date :finish
      t.string :password
      t.references :organizer
    end
  end

  def down
    change_column_default :events, :active, false
  end
end
