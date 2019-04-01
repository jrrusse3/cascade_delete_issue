class AbetsController < ApplicationController
  before_action :set_abet, only: [:show, :edit, :update, :destroy]

  # GET /abets
  # GET /abets.json
  def index
    @abets = Abet.all
  end

  # GET /abets/1
  # GET /abets/1.json
  def show
  end

  # GET /abets/new
  def new
    @abet = Abet.new
  end

  # GET /abets/1/edit
  def edit
  end

  # POST /abets
  # POST /abets.json
  def create
    @abet = Abet.new(abet_params)

    respond_to do |format|
      if @abet.save
        format.html { redirect_to @abet, notice: 'Abet was successfully created.' }
        format.json { render :show, status: :created, location: @abet }
      else
        format.html { render :new }
        format.json { render json: @abet.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /abets/1
  # PATCH/PUT /abets/1.json
  def update
    respond_to do |format|
      if @abet.update(abet_params)
        format.html { redirect_to @abet, notice: 'Abet was successfully updated.' }
        format.json { render :show, status: :ok, location: @abet }
      else
        format.html { render :edit }
        format.json { render json: @abet.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /abets/1
  # DELETE /abets/1.json
  def destroy
    @abet.destroy
    respond_to do |format|
      format.html { redirect_to abets_url, notice: 'Abet was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_abet
      @abet = Abet.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def abet_params
      params.require(:abet).permit(:description, :poor, :acceptable, :exceeds)
    end
end
