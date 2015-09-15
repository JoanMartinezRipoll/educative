class CompanyShareholdersController < ApplicationController
  before_action :set_company_shareholder, only: [:show, :edit, :update, :destroy]

  # GET /company_shareholders
  # GET /company_shareholders.json
  def index
    @company_shareholders = CompanyShareholder.all
  end

  # GET /company_shareholders/1
  # GET /company_shareholders/1.json
  def show
  end

  # GET /company_shareholders/new
  def new
    @company_shareholder = CompanyShareholder.new
  end

  # GET /company_shareholders/1/edit
  def edit
  end

  # POST /company_shareholders
  # POST /company_shareholders.json
  def create
    @company_shareholder = CompanyShareholder.new(company_shareholder_params)

    respond_to do |format|
      if @company_shareholder.save
        format.html { redirect_to @company_shareholder, notice: 'Company shareholder was successfully created.' }
        format.json { render :show, status: :created, location: @company_shareholder }
      else
        format.html { render :new }
        format.json { render json: @company_shareholder.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /company_shareholders/1
  # PATCH/PUT /company_shareholders/1.json
  def update
    respond_to do |format|
      if @company_shareholder.update(company_shareholder_params)
        format.html { redirect_to @company_shareholder, notice: 'Company shareholder was successfully updated.' }
        format.json { render :show, status: :ok, location: @company_shareholder }
      else
        format.html { render :edit }
        format.json { render json: @company_shareholder.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /company_shareholders/1
  # DELETE /company_shareholders/1.json
  def destroy
    @company_shareholder.destroy
    respond_to do |format|
      format.html { redirect_to company_shareholders_url, notice: 'Company shareholder was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_company_shareholder
      @company_shareholder = CompanyShareholder.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def company_shareholder_params
      params.require(:company_shareholder).permit(:hrm_number)
    end
end
