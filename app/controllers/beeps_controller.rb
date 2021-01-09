class BeepsController < ApplicationController
  before_action :set_beep, only: [:show, :edit, :update, :destroy]

  # GET /beeps
  # GET /beeps.json
  def index
    @beeps = Beep.all
  end

  # GET /beeps/1
  # GET /beeps/1.json
  def show
  end

  # GET /beeps/new
  def new
    @beep = Beep.new
  end

  # GET /beeps/1/edit
  def edit
  end

  # POST /beeps
  # POST /beeps.json
  def create
    @beep = Beep.new(beep_params)

    respond_to do |format|
      if @beep.save
        format.html { redirect_to @beep, notice: 'Beep was successfully created.' }
        format.json { render :show, status: :created, location: @beep }
      else
        format.html { render :new }
        format.json { render json: @beep.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /beeps/1
  # PATCH/PUT /beeps/1.json
  def update
    respond_to do |format|
      if @beep.update(beep_params)
        format.html { redirect_to @beep, notice: 'Beep was successfully updated.' }
        format.json { render :show, status: :ok, location: @beep }
      else
        format.html { render :edit }
        format.json { render json: @beep.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /beeps/1
  # DELETE /beeps/1.json
  def destroy
    @beep.destroy
    respond_to do |format|
      format.html { redirect_to beeps_url, notice: 'Beep was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_beep
      @beep = Beep.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def beep_params
      params.require(:beep).permit(:text, :author)
    end
end
