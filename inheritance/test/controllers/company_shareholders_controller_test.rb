require 'test_helper'

class CompanyShareholdersControllerTest < ActionController::TestCase
  setup do
    @company_shareholder = company_shareholders(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:company_shareholders)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create company_shareholder" do
    assert_difference('CompanyShareholder.count') do
      post :create, company_shareholder: { hrm_number: @company_shareholder.hrm_number }
    end

    assert_redirected_to company_shareholder_path(assigns(:company_shareholder))
  end

  test "should show company_shareholder" do
    get :show, id: @company_shareholder
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @company_shareholder
    assert_response :success
  end

  test "should update company_shareholder" do
    patch :update, id: @company_shareholder, company_shareholder: { hrm_number: @company_shareholder.hrm_number }
    assert_redirected_to company_shareholder_path(assigns(:company_shareholder))
  end

  test "should destroy company_shareholder" do
    assert_difference('CompanyShareholder.count', -1) do
      delete :destroy, id: @company_shareholder
    end

    assert_redirected_to company_shareholders_path
  end
end
