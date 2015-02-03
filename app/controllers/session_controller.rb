class SessionController < ApplicationController
  # def new
  #   render(:new)
  # end

  def create
    user = User.find_by(email_address: params[:email_address])

    if user && user.password == params[:password]
      session[:user_id] = user.id
      redirect_to "/tracks/"+user.id.to_s+"/tracks"
    else
      redirect_to '/'
    end
  end

  def destroy
    reset_session
    redirect_to '/login'
  end
end