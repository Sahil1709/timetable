class MondaysController < ApplicationController
  before_action :set_monday, only: %i[ show edit update destroy ]
  before_action :authenticate_user!

  # GET /mondays or /mondays.json
  def index
    @mondays = Monday.all
  end

  # GET /mondays/1 or /mondays/1.json
  def show
  end

  # GET /mondays/new
  def new
    @monday = Monday.new
  end

  # GET /mondays/1/edit
  def edit
  end

  # POST /mondays or /mondays.json
  def create
    @monday = Monday.new(monday_params)

    respond_to do |format|
      if @monday.save
        format.html { redirect_to @monday, notice: "Monday was successfully created." }
        format.json { render :show, status: :created, location: @monday }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @monday.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mondays/1 or /mondays/1.json
  def update
    respond_to do |format|
      if @monday.update(monday_params)
        format.html { redirect_to @monday, notice: "Monday was successfully updated." }
        format.json { render :show, status: :ok, location: @monday }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @monday.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mondays/1 or /mondays/1.json
  def destroy
    @monday.destroy
    respond_to do |format|
      format.html { redirect_to mondays_url, notice: "Monday was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_monday
      @monday = Monday.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def monday_params
      params.require(:monday).permit(:from, :to, :Subject, :link, :Prof)
    end
end
