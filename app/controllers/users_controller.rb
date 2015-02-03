class UsersController < ApplicationController

	def create
 	# binding.pry
 		new_user = User.create({
 			name: params["name"],
 			email_address: params["email_address"],
 			password: params["password"],
 			location: params["location"],
 			favorite_artist: params["favorite_artist"]
 			})
 		redirect_to "/"
	end


end

