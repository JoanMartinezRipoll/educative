require 'test_helper'

class PersonShareholdersControllerTest < ActionController::TestCase
  setup do
    @person_shareholder = person_shareholders(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:person_shareholders)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create person_shareholder" do
    assert_difference('PersonShareholder.count') do
      post :create, person_shareholder: { birthdate: @person_shareholder.birthdate, last_name: @person_shareholder.last_name }
    end

    assert_redirected_to person_shareholder_path(assigns(:person_shareholder))
  end

  test "should show person_shareholder" do
    get :show, id: @person_shareholder
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @person_shareholder
    assert_response :success
  end

  test "should update person_shareholder" do
    patch :update, id: @person_shareholder, person_shareholder: { birthdate: @person_shareholder.birthdate, last_name: @person_shareholder.last_name }
    assert_redirected_to person_shareholder_path(assigns(:person_shareholder))
  end

  test "should destroy person_shareholder" do
    assert_difference('PersonShareholder.count', -1) do
      delete :destroy, id: @person_shareholder
    end

    assert_redirected_to person_shareholders_path
  end
end
