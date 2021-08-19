class ThursdaysController < ApplicationController
  before_action :set_thursday, only: %i[ show edit update destroy ]
before_action :authenticate_user!
  # GET /thursdays or /thursdays.json
  def index
    @thursdays = Thursday.all
  end

  # GET /thursdays/1 or /thursdays/1.json
  def show
  end

  # GET /thursdays/new
  def new
    @thursday = Thursday.new
  end

  # GET /thursdays/1/edit
  def edit
  end

  # POST /thursdays or /thursdays.json
  def create
    @thursday = Thursday.new(thursday_params)

    respond_to do |format|
      if @thursday.save
        format.html { redirect_to @thursday, notice: "Thursday was successfully created." }
        format.json { render :show, status: :created, location: @thursday }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @thursday.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /thursdays/1 or /thursdays/1.json
  def update
    respond_to do |format|
      if @thursday.update(thursday_params)
        format.html { redirect_to @thursday, notice: "Thursday was successfully updated." }
        format.json { render :show, status: :ok, location: @thursday }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @thursday.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /thursdays/1 or /thursdays/1.json
  def destroy
    @thursday.destroy
    respond_to do |format|
      format.html { redirect_to thursdays_url, notice: "Thursday was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_thursday
      @thursday = Thursday.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def thursday_params
      params.require(:thursday).permit(:from, :to, :Subject, :link, :Prof)
    end
end
