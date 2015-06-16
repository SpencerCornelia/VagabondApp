class AddPlacesIdToPosts < ActiveRecord::Migration
  def change
  	change_table :posts do |t|
  	  t.integer :place_id
  	end
  end
end
