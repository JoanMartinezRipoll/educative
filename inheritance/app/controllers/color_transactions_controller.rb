class ColorTransactionsController < ApplicationController
  before_action :set_color_transaction, only: [:show, :edit, :update, :destroy]

  # GET /color_transactions
  # GET /color_transactions.json
  def index
    @color_transactions = ColorTransaction.all
  end

  # GET /color_transactions/1
  # GET /color_transactions/1.json
  def show
  end

  # GET /color_transactions/new
  def new
    @color_transaction = ColorTransaction.new
  end

  # GET /color_transactions/1/edit
  def edit
  end

  # POST /color_transactions
  # POST /color_transactions.json
  def create
    @color_transaction = ColorTransaction.new(color_transaction_params)

    respond_to do |format|
      if @color_transaction.save
        format.html { redirect_to @color_transaction, notice: 'Color transaction was successfully created.' }
        format.json { render :show, status: :created, location: @color_transaction }
      else
        format.html { render :new }
        format.json { render json: @color_transaction.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /color_transactions/1
  # PATCH/PUT /color_transactions/1.json
  def update
    respond_to do |format|
      if @color_transaction.update(color_transaction_params)
        format.html { redirect_to @color_transaction, notice: 'Color transaction was successfully updated.' }
        format.json { render :show, status: :ok, location: @color_transaction }
      else
        format.html { render :edit }
        format.json { render json: @color_transaction.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /color_transactions/1
  # DELETE /color_transactions/1.json
  def destroy
    @color_transaction.destroy
    respond_to do |format|
      format.html { redirect_to color_transactions_url, notice: 'Color transaction was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_color_transaction
      @color_transaction = ColorTransaction.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def color_transaction_params
      params.require(:color_transaction).permit(:iban, :color, :banker_id)
    end
end
