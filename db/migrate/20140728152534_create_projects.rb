class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :title
      t.text :content
      t.string :image
      t.integer :division_id

      t.timestamps
    end
  end
end
