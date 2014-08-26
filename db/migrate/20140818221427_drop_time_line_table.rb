class DropTimeLineTable < ActiveRecord::Migration
  def change
  	drop_table :time_lines 
  end
end
