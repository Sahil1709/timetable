class FridaysController < ApplicationController
  before_action :set_friday, only: %i[ show edit update destroy ]
before_action :authenticate_user!
  # GET /fridays or /fridays.json
  def index
    @fridays = Friday.all
  end

  # GET /fridays/1 or /fridays/1.json
  def show
  end

  # GET /fridays/new
  def new
    @friday = Friday.new
  end

  # GET /fridays/1/edit
  def edit
  end

  # POST /fridays or /fridays.json
  def create
    @friday = Friday.new(friday_params)

    respond_to do |format|
      if @friday.save
        format.html { redirect_to @friday, notice: "Friday was successfully created." }
        format.json { render :show, status: :created, location: @friday }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @friday.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /fridays/1 or /fridays/1.json
  def update
    respond_to do |format|
      if @friday.update(friday_params)
        format.html { redirect_to @friday, notice: "Friday was successfully updated." }
        format.json { render :show, status: :ok, location: @friday }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @friday.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fridays/1 or /fridays/1.json
  def destroy
    @friday.destroy
    respond_to do |format|
      format.html { redirect_to fridays_url, notice: "Friday was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_friday
      @friday = Friday.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def friday_params
      params.require(:friday).permit(:from, :to, :Subject, :link, :Prof)
    end
end
