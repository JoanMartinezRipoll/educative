require 'test_helper'

class ShareholdersControllerTest < ActionController::TestCase
  setup do
    @shareholder = shareholders(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:shareholders)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create shareholder" do
    assert_difference('Shareholder.count') do
      post :create, shareholder: { name: @shareholder.name, trustee_id: @shareholder.trustee_id }
    end

    assert_redirected_to shareholder_path(assigns(:shareholder))
  end

  test "should show shareholder" do
    get :show, id: @shareholder
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @shareholder
    assert_response :success
  end

  test "should update shareholder" do
    patch :update, id: @shareholder, shareholder: { name: @shareholder.name, trustee_id: @shareholder.trustee_id }
    assert_redirected_to shareholder_path(assigns(:shareholder))
  end

  test "should destroy shareholder" do
    assert_difference('Shareholder.count', -1) do
      delete :destroy, id: @shareholder
    end

    assert_redirected_to shareholders_path
  end
end
