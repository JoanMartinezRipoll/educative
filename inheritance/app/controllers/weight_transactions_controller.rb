class WeightTransactionsController < ApplicationController
  before_action :set_weight_transaction, only: [:show, :edit, :update, :destroy]

  # GET /weight_transactions
  # GET /weight_transactions.json
  def index
    @weight_transactions = WeightTransaction.all
  end

  # GET /weight_transactions/1
  # GET /weight_transactions/1.json
  def show
  end

  # GET /weight_transactions/new
  def new
    @weight_transaction = WeightTransaction.new
  end

  # GET /weight_transactions/1/edit
  def edit
  end

  # POST /weight_transactions
  # POST /weight_transactions.json
  def create
    @weight_transaction = WeightTransaction.new(weight_transaction_params)

    respond_to do |format|
      if @weight_transaction.save
        format.html { redirect_to @weight_transaction, notice: 'Weight transaction was successfully created.' }
        format.json { render :show, status: :created, location: @weight_transaction }
      else
        format.html { render :new }
        format.json { render json: @weight_transaction.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /weight_transactions/1
  # PATCH/PUT /weight_transactions/1.json
  def update
    respond_to do |format|
      if @weight_transaction.update(weight_transaction_params)
        format.html { redirect_to @weight_transaction, notice: 'Weight transaction was successfully updated.' }
        format.json { render :show, status: :ok, location: @weight_transaction }
      else
        format.html { render :edit }
        format.json { render json: @weight_transaction.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /weight_transactions/1
  # DELETE /weight_transactions/1.json
  def destroy
    @weight_transaction.destroy
    respond_to do |format|
      format.html { redirect_to weight_transactions_url, notice: 'Weight transaction was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_weight_transaction
      @weight_transaction = WeightTransaction.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def weight_transaction_params
      params.require(:weight_transaction).permit(:iban, :weight, :banker_id)
    end
end
