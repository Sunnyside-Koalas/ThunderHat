class StaticPagesController < ApplicationController
  def top_twenty
    sc = SoundCloudWrapper.new

  end
end
