require 'soundcloud'
# list the 20 'hottest' tracks from the SoundCloud api (this is explained in the SoundCloud Gem docs).
# save the track's title, permalink url, description, avatar url
# BONUS  search Soundcloud and save what they want from the results

class SoundCloudWrapper

  def initialize()
    @CLIENT_ID = ENV["SOUNDCLOUD_CLIENT_ID"]
    raise StandardError, "SOUNDCLOUD_CLIENT_ID not set as environmental variable" unless @CLIENT_ID != ''
    # tracks = client.get('/tracks', :limit => 10, :order => 'hotness')
  end

  def hottest_tracks(num)
    client = SoundCloud.new(:client_id => @CLIENT_ID)
    tracks = client.get('/tracks', :limit => num, :order => 'hotness')
    tracks.map do |track|
      {title: track["title"], 
       permalink_url:track["permalink_url"], 
       description:track["description"] , 
       avatar_url:track["user"]["avatar_url"] }
    end
  end

end

# track["title"]
# track["permalink_url"]
# track["description"]
# track["user"]["avatar_url"]


# require 'soundcloud'
# client = SoundCloud.new(:client_id => ENV["SOUNDCLOUD_CLIENT_ID"])
# tracks = client.get('/tracks', :limit => 10, :order => 'hotness')
