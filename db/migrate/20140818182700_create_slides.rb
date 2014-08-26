class CreateSlides < ActiveRecord::Migration
  def change
    create_table :slides do |t|
      t.string :title
      t.text :text
      t.string :image
      t.integer :service_id

      t.timestamps
    end
  end
end
