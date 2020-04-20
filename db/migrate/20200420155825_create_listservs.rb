class CreateListservs < ActiveRecord::Migration[6.0]
  def change
    create_table :listservs do |t|
      t.string :email

      t.timestamps
    end
  end
end
