class CreateYears < ActiveRecord::Migration
  def change
    create_table :years do |t|
    	t.string :title
    	t.text :text
      t.integer :date
      t.string :image

      t.timestamps
    end
  end
end
