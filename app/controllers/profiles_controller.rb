class ProfilesController < ApplicationController
  http_basic_authenticate_with :name => "admin", :password => "Wellbeadmin@12", :only => :index
  def new
      @profile = Profile.new
    end

  def index
    @profile = Profile.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @profiles }
    end
  end

  def show
    @user = User.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @user }
    end
  end

  def create
    @profile = Profile.new(params[:profile])
    if @profile.save
      session[:profile_id] = @profile.id
      redirect_to :controller => "sessions", :action => "show", :id => session[:profile_id], :notice => "Profile Created!"
    else
      render "new"
    end
  end

    def update
    @profile = Profile.find(params[:id])

    respond_to do |format|
      if @profile.update_attributes(params[:profile])
        format.html { redirect_to @profile, notice: 'profile was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @profile.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /profiles/1
  # DELETE /profiles/1.json
  def destroy
    @profile = Profile.find(params[:id])
    @profile.destroy

    respond_to do |format|
      format.html { redirect_to profiles_url }
      format.json { head :no_content }
    end
  end

end
