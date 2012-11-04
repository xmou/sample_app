class AddGmapsToUsers < ActiveRecord::Migration
  def change
  	add_column :users, :country, :string
  	add_column :users, :city, :string
  	add_column :users, :street, :string
  	add_column :users, :latitude, :string
  	add_column :users, :longitude, :string
  	add_column :users, :gmaps, :boolean
  end
end
