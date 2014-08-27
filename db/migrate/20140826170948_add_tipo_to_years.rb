class AddTipoToYears < ActiveRecord::Migration
  def change
    add_column :years, :tipo, :string
  end
end
