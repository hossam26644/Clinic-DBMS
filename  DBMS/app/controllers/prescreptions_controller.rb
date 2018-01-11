class PrescreptionsController < ApplicationController
  before_action :set_prescreption, only: [:show, :edit, :update, :destroy]

  # GET /prescreptions
  # GET /prescreptions.json
  def index
    @prescreptions = Prescreption.all
  end

  # GET /prescreptions/1
  # GET /prescreptions/1.json
  def show
  end

  # GET /prescreptions/new
  def new
    @prescreption = Prescreption.new
  end

  # GET /prescreptions/1/edit
  def edit
  end

  # POST /prescreptions
  # POST /prescreptions.json
  def create
    @prescreption = Prescreption.new(prescreption_params)

    respond_to do |format|
      if @prescreption.save
        format.html { redirect_to @prescreption, notice: 'Prescreption was successfully created.' }
        format.json { render :show, status: :created, location: @prescreption }
      else
        format.html { render :new }
        format.json { render json: @prescreption.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /prescreptions/1
  # PATCH/PUT /prescreptions/1.json
  def update
    respond_to do |format|
      if @prescreption.update(prescreption_params)
        format.html { redirect_to @prescreption, notice: 'Prescreption was successfully updated.' }
        format.json { render :show, status: :ok, location: @prescreption }
      else
        format.html { render :edit }
        format.json { render json: @prescreption.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /prescreptions/1
  # DELETE /prescreptions/1.json
  def destroy
    @prescreption.destroy
    respond_to do |format|
      format.html { redirect_to prescreptions_url, notice: 'Prescreption was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_prescreption
      @prescreption = Prescreption.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def prescreption_params
      params.require(:prescreption).permit(:patient_id, :diagnosis, :medications, :doctors_comments)
    end
end
