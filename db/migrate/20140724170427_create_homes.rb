class CreateHomes < ActiveRecord::Migration
  def change
    create_table :homes do |t|
      t.string :logo
      t.string :slider_image_one
      t.string :slider_title_one
      t.text   :slider_text_one
      t.string :slider_image_two
      t.string :slider_title_two
      t.text   :slider_text_two
      t.string :slider_image_three
      t.string :slider_title_three
      t.text   :slider_text_three
      t.text   :promocional
      t.string :about
      t.string :address
      t.integer :telephone
      t.integer :fax
      t.string :email
      

      t.timestamps
    end
  end
end
