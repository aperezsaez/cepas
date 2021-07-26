class StraingsController < ApplicationController
  before_action :set_straing, only: %i[ show edit update destroy ]

  # GET /straings or /straings.json
  def index
    @straings = Straing.all
  end

  # GET /straings/1 or /straings/1.json
  def show
  end

  # GET /straings/new
  def new
    @straing = Straing.new
  end

  # GET /straings/1/edit
  def edit
  end

  # POST /straings or /straings.json
  def create
    @straing = Straing.new(straing_params)

    respond_to do |format|
      if @straing.save
        format.html { redirect_to @straing, notice: "Straing was successfully created." }
        format.json { render :show, status: :created, location: @straing }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @straing.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /straings/1 or /straings/1.json
  def update
    respond_to do |format|
      if @straing.update(straing_params)
        format.html { redirect_to @straing, notice: "Straing was successfully updated." }
        format.json { render :show, status: :ok, location: @straing }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @straing.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /straings/1 or /straings/1.json
  def destroy
    @straing.destroy
    respond_to do |format|
      format.html { redirect_to straings_url, notice: "Straing was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_straing
      @straing = Straing.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def straing_params
      params.require(:straing).permit(:name)
    end
end
