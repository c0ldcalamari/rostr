class CreateCategory < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :subject
      t.integer :rating
      t.references :participant
    end

  end
end
