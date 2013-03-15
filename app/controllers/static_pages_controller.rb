class StaticPagesController < ApplicationController
  def home
  	@rentestimate = Rentestimate.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @rentestimate }
    end
  end

  def about
  end

end
