class PersonShareholdersController < ApplicationController
  before_action :set_person_shareholder, only: [:show, :edit, :update, :destroy]

  # GET /person_shareholders
  # GET /person_shareholders.json
  def index
    @person_shareholders = PersonShareholder.all
  end

  # GET /person_shareholders/1
  # GET /person_shareholders/1.json
  def show
  end

  # GET /person_shareholders/new
  def new
    @person_shareholder = PersonShareholder.new
  end

  # GET /person_shareholders/1/edit
  def edit
  end

  # POST /person_shareholders
  # POST /person_shareholders.json
  def create
    @person_shareholder = PersonShareholder.new(person_shareholder_params)

    respond_to do |format|
      if @person_shareholder.save
        format.html { redirect_to @person_shareholder, notice: 'Person shareholder was successfully created.' }
        format.json { render :show, status: :created, location: @person_shareholder }
      else
        format.html { render :new }
        format.json { render json: @person_shareholder.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /person_shareholders/1
  # PATCH/PUT /person_shareholders/1.json
  def update
    respond_to do |format|
      if @person_shareholder.update(person_shareholder_params)
        format.html { redirect_to @person_shareholder, notice: 'Person shareholder was successfully updated.' }
        format.json { render :show, status: :ok, location: @person_shareholder }
      else
        format.html { render :edit }
        format.json { render json: @person_shareholder.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /person_shareholders/1
  # DELETE /person_shareholders/1.json
  def destroy
    @person_shareholder.destroy
    respond_to do |format|
      format.html { redirect_to person_shareholders_url, notice: 'Person shareholder was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_person_shareholder
      @person_shareholder = PersonShareholder.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def person_shareholder_params
      params.require(:person_shareholder).permit(:last_name, :birthdate)
    end
end
