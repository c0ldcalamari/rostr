class CreateOrganizers < ActiveRecord::Migration
  def change
      create_table :organizers do |t|
      t.string :username
      t.string :password

      t.timestamps
    end
  end
end
