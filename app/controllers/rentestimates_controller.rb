class RentestimatesController < ApplicationController
  # GET /rentestimates
  # GET /rentestimates.json
  def index
    @rentestimates = Rentestimate.order("created_at desc")

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @rentestimates }
    end
  end

  # GET /rentestimates/1
  # GET /rentestimates/1.json
  def show
    @rentestimate = Rentestimate.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @rentestimate }
    end
  end

  # GET /rentestimates/new
  # GET /rentestimates/new.json
  def new
    @rentestimate = Rentestimate.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @rentestimate }
    end
  end

  # GET /rentestimates/1/edit
  def edit
    @rentestimate = Rentestimate.find(params[:id])
  end

  # POST /rentestimates
  # POST /rentestimates.json
  def create
    @rentestimate = Rentestimate.new(params[:rentestimate])

    respond_to do |format|
      if @rentestimate.save
        format.html { redirect_to edit_rentestimate_path(@rentestimate), notice: 'Qestimate - created.' }
        format.json { render json: @rentestimate, status: :created, location: edit_rentestimate_path(@rentestimate) }
      else
        format.html { render action: "new" }
        format.json { render json: @rentestimate.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /rentestimates/1
  # PUT /rentestimates/1.json
  def update
    @rentestimate = Rentestimate.find(params[:id])

    respond_to do |format|
      if @rentestimate.update_attributes(params[:rentestimate])
        format.html { redirect_to @rentestimate, notice: 'Qestimate - updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @rentestimate.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rentestimates/1
  # DELETE /rentestimates/1.json
  def destroy
    @rentestimate = Rentestimate.find(params[:id])
    @rentestimate.destroy

    respond_to do |format|
      format.html { redirect_to rentestimates_url }
      format.json { head :no_content }
    end
  end
end
