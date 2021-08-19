class WednesdaysController < ApplicationController
  before_action :set_wednesday, only: %i[ show edit update destroy ]
before_action :authenticate_user!
  # GET /wednesdays or /wednesdays.json
  def index
    @wednesdays = Wednesday.all
  end

  # GET /wednesdays/1 or /wednesdays/1.json
  def show
  end

  # GET /wednesdays/new
  def new
    @wednesday = Wednesday.new
  end

  # GET /wednesdays/1/edit
  def edit
  end

  # POST /wednesdays or /wednesdays.json
  def create
    @wednesday = Wednesday.new(wednesday_params)

    respond_to do |format|
      if @wednesday.save
        format.html { redirect_to @wednesday, notice: "Wednesday was successfully created." }
        format.json { render :show, status: :created, location: @wednesday }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @wednesday.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /wednesdays/1 or /wednesdays/1.json
  def update
    respond_to do |format|
      if @wednesday.update(wednesday_params)
        format.html { redirect_to @wednesday, notice: "Wednesday was successfully updated." }
        format.json { render :show, status: :ok, location: @wednesday }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @wednesday.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /wednesdays/1 or /wednesdays/1.json
  def destroy
    @wednesday.destroy
    respond_to do |format|
      format.html { redirect_to wednesdays_url, notice: "Wednesday was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_wednesday
      @wednesday = Wednesday.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def wednesday_params
      params.require(:wednesday).permit(:from, :to, :Subject, :link, :Prof)
    end
end
