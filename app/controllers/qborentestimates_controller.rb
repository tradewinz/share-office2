class QborentestimatesController < ApplicationController
  # GET /qborentestimates
  # GET /qborentestimates.json
  def index
    @qborentestimates = Qborentestimate.order("created_at desc")

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @qborentestimates }
    end
  end

  # GET /qborentestimates/1
  # GET /qborentestimates/1.json
  def show
    @qborentestimate = Qborentestimate.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @qborentestimate }
    end
  end

  # GET /qborentestimates/new
  # GET /qborentestimates/new.json
  def new
    @qborentestimate = Qborentestimate.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @qborentestimate }
    end
  end

  # GET /qborentestimates/1/edit
  def edit
    @qborentestimate = Qborentestimate.find(params[:id])
  end

  # POST /qborentestimates
  # POST /qborentestimates.json
  def create
    @qborentestimate = Qborentestimate.new(params[:qborentestimate])

    respond_to do |format|
      if @qborentestimate.save
        format.html { redirect_to edit_qborentestimate_path(@qborentestimate), notice: 'Qestimate was successfully created.' }
        format.json { render json: @qborentestimate, status: :created, location: @qborentestimate }
      else
        format.html { render action: "new" }
        format.json { render json: @qborentestimate.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /qborentestimates/1
  # PUT /qborentestimates/1.json
  def update
    @qborentestimate = Qborentestimate.find(params[:id])

    respond_to do |format|
      if @qborentestimate.update_attributes(params[:qborentestimate])
        format.html { redirect_to @qborentestimate, notice: 'Qestimate was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @qborentestimate.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /qborentestimates/1
  # DELETE /qborentestimates/1.json
  def destroy
    @qborentestimate = Qborentestimate.find(params[:id])
    @qborentestimate.destroy

    respond_to do |format|
      format.html { redirect_to qborentestimates_url }
      format.json { head :no_content }
    end
  end
end
