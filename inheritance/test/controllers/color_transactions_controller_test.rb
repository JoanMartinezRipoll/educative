require 'test_helper'

class ColorTransactionsControllerTest < ActionController::TestCase
  setup do
    @color_transaction = color_transactions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:color_transactions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create color_transaction" do
    assert_difference('ColorTransaction.count') do
      post :create, color_transaction: { banker_id: @color_transaction.banker_id, color: @color_transaction.color, iban: @color_transaction.iban }
    end

    assert_redirected_to color_transaction_path(assigns(:color_transaction))
  end

  test "should show color_transaction" do
    get :show, id: @color_transaction
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @color_transaction
    assert_response :success
  end

  test "should update color_transaction" do
    patch :update, id: @color_transaction, color_transaction: { banker_id: @color_transaction.banker_id, color: @color_transaction.color, iban: @color_transaction.iban }
    assert_redirected_to color_transaction_path(assigns(:color_transaction))
  end

  test "should destroy color_transaction" do
    assert_difference('ColorTransaction.count', -1) do
      delete :destroy, id: @color_transaction
    end

    assert_redirected_to color_transactions_path
  end
end
