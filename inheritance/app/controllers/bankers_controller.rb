class BankersController < ApplicationController
  before_action :set_banker, only: [:show, :edit, :update, :destroy]

  # GET /bankers
  # GET /bankers.json
  def index
    @bankers = Banker.all
  end

  # GET /bankers/1
  # GET /bankers/1.json
  def show
  end

  # GET /bankers/new
  def new
    @banker = Banker.new
  end

  # GET /bankers/1/edit
  def edit
  end

  # POST /bankers
  # POST /bankers.json
  def create
    @banker = Banker.new(banker_params)

    respond_to do |format|
      if @banker.save
        format.html { redirect_to @banker, notice: 'Banker was successfully created.' }
        format.json { render :show, status: :created, location: @banker }
      else
        format.html { render :new }
        format.json { render json: @banker.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bankers/1
  # PATCH/PUT /bankers/1.json
  def update
    respond_to do |format|
      if @banker.update(banker_params)
        format.html { redirect_to @banker, notice: 'Banker was successfully updated.' }
        format.json { render :show, status: :ok, location: @banker }
      else
        format.html { render :edit }
        format.json { render json: @banker.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bankers/1
  # DELETE /bankers/1.json
  def destroy
    @banker.destroy
    respond_to do |format|
      format.html { redirect_to bankers_url, notice: 'Banker was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_banker
      @banker = Banker.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def banker_params
      params.require(:banker).permit(:name)
    end
end
