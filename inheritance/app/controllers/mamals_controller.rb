class MamalsController < ApplicationController
  before_action :set_mamal, only: [:show, :edit, :update, :destroy]

  # GET /mamals
  # GET /mamals.json
  def index
    @mamals = Mamal.all
  end

  # GET /mamals/1
  # GET /mamals/1.json
  def show
  end

  # GET /mamals/new
  def new
    @mamal = Mamal.new
  end

  # GET /mamals/1/edit
  def edit
  end

  # POST /mamals
  # POST /mamals.json
  def create
    @mamal = Mamal.new(mamal_params)

    respond_to do |format|
      if @mamal.save
        format.html { redirect_to @mamal, notice: 'Mamal was successfully created.' }
        format.json { render :show, status: :created, location: @mamal }
      else
        format.html { render :new }
        format.json { render json: @mamal.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mamals/1
  # PATCH/PUT /mamals/1.json
  def update
    respond_to do |format|
      if @mamal.update(mamal_params)
        format.html { redirect_to @mamal, notice: 'Mamal was successfully updated.' }
        format.json { render :show, status: :ok, location: @mamal }
      else
        format.html { render :edit }
        format.json { render json: @mamal.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mamals/1
  # DELETE /mamals/1.json
  def destroy
    @mamal.destroy
    respond_to do |format|
      format.html { redirect_to mamals_url, notice: 'Mamal was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mamal
      @mamal = Mamal.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def mamal_params
      params.require(:mamal).permit(:pregnancy_time)
    end
end
