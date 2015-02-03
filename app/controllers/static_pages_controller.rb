class StaticPagesController < ApplicationController
  require 'soundcloud'
  def top_twenty
    # sc = SoundCloudWrapper.new
    client_id = ENV["SOUNDCLOUD_CLIENT_ID"]
    client = SoundCloud.new(:client_id => client_id)
    tracks = client.get('/tracks', :limit => 20, :order => 'hotness')
    @tracks = []
    tracks.each do |track|
      t = Track.create( title: track["title"], 
                   permalink_url:track["permalink_url"], 
                   description:track["description"] , 
                   avatar_url:track["user"]["avatar_url"] )
      @tracks << t
    end

  end
end
