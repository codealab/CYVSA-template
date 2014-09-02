class CreateTimeLines < ActiveRecord::Migration
  def change
    create_table :time_lines do |t|
      t.text :content
      t.string :title
      t.integer :date
      t.string :image

      t.timestamps
    end
  end
end
