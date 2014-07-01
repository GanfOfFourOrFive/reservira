class CreateTables < ActiveRecord::Migration
  def change
    create_table :tables do |t|
      t.string :description
      t.integer :slots
      t.boolean :reserved
      t.string :company

      t.timestamps
    end
  end
end
