class TracksController < ApplicationController
	def index
		# binding.pry
		# user = User.find_by(email_address: params[:email_address])
	end

	def create
 		new_track = Track.create({
 			title: params["title"],
 			permalink_url: params["permalink_url"],
 			description: params["description"],
 			avatar_url: params["avatar_url"],
 			user_id: params["user_id"],
 			})
 		redirect_to "/tracks/:user_id/tracks"
	end

	def edit
 	@id = params["id"]
 	@track = Track.find(params["id"])
 	@user = @track.user_id
 	end

	
	def destroy
 		track = Track.find(params[:id])

    track.destroy
    redirect_to "/tracks/:user_id/tracks"
	end


end


