require 'test_helper'

class WeightTransactionsControllerTest < ActionController::TestCase
  setup do
    @weight_transaction = weight_transactions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:weight_transactions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create weight_transaction" do
    assert_difference('WeightTransaction.count') do
      post :create, weight_transaction: { banker_id: @weight_transaction.banker_id, iban: @weight_transaction.iban, weight: @weight_transaction.weight }
    end

    assert_redirected_to weight_transaction_path(assigns(:weight_transaction))
  end

  test "should show weight_transaction" do
    get :show, id: @weight_transaction
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @weight_transaction
    assert_response :success
  end

  test "should update weight_transaction" do
    patch :update, id: @weight_transaction, weight_transaction: { banker_id: @weight_transaction.banker_id, iban: @weight_transaction.iban, weight: @weight_transaction.weight }
    assert_redirected_to weight_transaction_path(assigns(:weight_transaction))
  end

  test "should destroy weight_transaction" do
    assert_difference('WeightTransaction.count', -1) do
      delete :destroy, id: @weight_transaction
    end

    assert_redirected_to weight_transactions_path
  end
end
