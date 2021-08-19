class TuesdaysController < ApplicationController
  before_action :set_tuesday, only: %i[ show edit update destroy ]
before_action :authenticate_user!
  # GET /tuesdays or /tuesdays.json
  def index
    @tuesdays = Tuesday.all
  end

  # GET /tuesdays/1 or /tuesdays/1.json
  def show
  end

  # GET /tuesdays/new
  def new
    @tuesday = Tuesday.new
  end

  # GET /tuesdays/1/edit
  def edit
  end

  # POST /tuesdays or /tuesdays.json
  def create
    @tuesday = Tuesday.new(tuesday_params)

    respond_to do |format|
      if @tuesday.save
        format.html { redirect_to @tuesday, notice: "Tuesday was successfully created." }
        format.json { render :show, status: :created, location: @tuesday }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @tuesday.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tuesdays/1 or /tuesdays/1.json
  def update
    respond_to do |format|
      if @tuesday.update(tuesday_params)
        format.html { redirect_to @tuesday, notice: "Tuesday was successfully updated." }
        format.json { render :show, status: :ok, location: @tuesday }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @tuesday.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tuesdays/1 or /tuesdays/1.json
  def destroy
    @tuesday.destroy
    respond_to do |format|
      format.html { redirect_to tuesdays_url, notice: "Tuesday was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tuesday
      @tuesday = Tuesday.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def tuesday_params
      params.require(:tuesday).permit(:from, :to, :Subject, :link, :Prof)
    end
end
