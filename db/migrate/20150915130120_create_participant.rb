class CreateParticipant < ActiveRecord::Migration
  def change
    create_table :participants do |t|
      t.string :name
      t.string :email
      t.integer :group
      t.references :event
    end
  end
end
