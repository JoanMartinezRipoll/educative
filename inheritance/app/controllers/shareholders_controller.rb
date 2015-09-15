class ShareholdersController < ApplicationController
  before_action :set_shareholder, only: [:show, :edit, :update, :destroy]

  # GET /shareholders
  # GET /shareholders.json
  def index
    @shareholders = Shareholder.all
  end

  # GET /shareholders/1
  # GET /shareholders/1.json
  def show
  end

  # GET /shareholders/new
  def new
    @shareholder = Shareholder.new
  end

  # GET /shareholders/1/edit
  def edit
  end

  # POST /shareholders
  # POST /shareholders.json
  def create
    @shareholder = Shareholder.new(shareholder_params)

    respond_to do |format|
      if @shareholder.save
        format.html { redirect_to @shareholder, notice: 'Shareholder was successfully created.' }
        format.json { render :show, status: :created, location: @shareholder }
      else
        format.html { render :new }
        format.json { render json: @shareholder.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /shareholders/1
  # PATCH/PUT /shareholders/1.json
  def update
    respond_to do |format|
      if @shareholder.update(shareholder_params)
        format.html { redirect_to @shareholder, notice: 'Shareholder was successfully updated.' }
        format.json { render :show, status: :ok, location: @shareholder }
      else
        format.html { render :edit }
        format.json { render json: @shareholder.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /shareholders/1
  # DELETE /shareholders/1.json
  def destroy
    @shareholder.destroy
    respond_to do |format|
      format.html { redirect_to shareholders_url, notice: 'Shareholder was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_shareholder
      @shareholder = Shareholder.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def shareholder_params
      params.require(:shareholder).permit(:name, :trustee_id)
    end
end
