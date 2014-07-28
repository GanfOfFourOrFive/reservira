class CreateLocales < ActiveRecord::Migration
  def change
    create_table :locales do |t|
      t.string :city
      t.string :address

      t.timestamps
    end
  end
end
