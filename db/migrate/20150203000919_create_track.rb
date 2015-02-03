class CreateTrack < ActiveRecord::Migration
  def change
    create_table :tracks do |t|
    	t.string "title"
    	t.string "permalink_url"
    	t.string "description"
    	t.string "avatar_url"
    	t.integer "user_id"
    end
  end
end
