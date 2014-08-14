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
      t.string :title_promocional
      t.text   :text_promocional
      t.string :title_button_promocional
      t.string :title_history
      t.text   :text_history
      t.string :title_button_history
      t.string :title_contact
      t.string :address
      t.integer :telephone_one
      t.integer :telephone_two
      t.integer :fax
      t.string :email
      t.string :title_recognition
      t.text   :text_recognition
      t.string :title_office
      t.text   :text_office
      t.string :title_button_office
      t.string :title_job
      t.text   :text_job
      t.string :title_button_job
      

      t.timestamps
    end
  end
end
