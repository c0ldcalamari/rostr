class SetDefaults < ActiveRecord::Migration
  def up
    # Set default value
    change_column_default :events, :created, false
    change_column_default :events, :started, false
    change_column_default :events, :finished, false
  end
end
