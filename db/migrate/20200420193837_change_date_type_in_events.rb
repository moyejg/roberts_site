class ChangeDateTypeInEvents < ActiveRecord::Migration[6.0]
  def self.up
    change_column :events, :date, :string
  end
 
  def self.down
    change_column :events, :date, :date
  end
end
