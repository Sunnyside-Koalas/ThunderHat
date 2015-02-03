class CreateUser < ActiveRecord::Migration
  def change
    create_table :users do |t|
    	t.string "name"
    	t.string "email_address"
    	t.string "password"
    	t.string "location"
    	t.string "favorite_artist"
    end
  end
end
