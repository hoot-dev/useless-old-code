class SessionsController < ApplicationController

  def new
    redirect_to '/auth/twitter'
  end

  def create
    auth = request.env["omniauth.auth"]
    user = User.find_by(provider: auth['provider'],
                      uid: auth['uid']) || User.create_with_omniauth(auth)
    session[:user_id] = user.id.to_s
    binding.pry
    redirect_to user_path(user), notice: "Signed in!"
  end

  def destroy
    reset_session
    redirect_to root_url
  end

  def failure
    redirect_to root_url, alert: "Authentication error: #{params[:message].humanize}"
  end

end
