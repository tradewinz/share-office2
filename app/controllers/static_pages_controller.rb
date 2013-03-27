class StaticPagesController < ApplicationController
  def home
  	@rentestimate = Rentestimate.new
  	
  	if params[:em]
  		@rentestimate[:trackingId] = params[:em]
  	end

    respond_to do |format|
      format.html # home.html.erb
      format.json { render json: @rentestimate }
    end
  end

  def qbohome
    @qborentestimate = Qborentestimate.new

    if params[:em]
      @qborentestimate[:trackingId] = params[:em]
    end

    respond_to do |format|
      format.html # qbohome.html.erb
      format.json { render json: @qborentestimate }
    end
  end

  def about
  end

end
