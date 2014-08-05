class CreateMaps < ActiveRecord::Migration
  def change
    create_table :maps do |t|
      t.string :name
      t.string :adress
      t.string :city
      t.string :country
      t.string :street
      t.integer :altitude
      t.integer :longitude

      t.timestamps
    end
  end
end
