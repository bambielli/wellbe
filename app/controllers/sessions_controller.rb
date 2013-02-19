class SessionsController < ApplicationController
  def new
  end

  def create
    profile = Profile.find_by_email(params[:email])
    if profile && profile.authenticate(params[:password])
      session[:profile_id] = profile.id
      redirect_to :action => "show", :id => session[:profile_id] , :notice => "Logged in!"
    else
      flash.now.alert = "Invalid email or password"
      render "new"
    end
  end

  def show
    @profile = Profile.find(current_profile)

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @user }
    end
  end

  def destroy
    session[:profile_id] = nil
    redirect_to root_url, :notice => "Logged out!"
  end
end
