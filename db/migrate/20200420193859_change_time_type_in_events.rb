class ChangeTimeTypeInEvents < ActiveRecord::Migration[6.0]
  def self.up
    change_column :events, :time, :string
  end
 
  def self.down
    change_column :events, :time, :time
  end
end
