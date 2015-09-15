require 'test_helper'

class MamalsControllerTest < ActionController::TestCase
  setup do
    @mamal = mamals(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:mamals)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create mamal" do
    assert_difference('Mamal.count') do
      post :create, mamal: { pregnancy_time: @mamal.pregnancy_time }
    end

    assert_redirected_to mamal_path(assigns(:mamal))
  end

  test "should show mamal" do
    get :show, id: @mamal
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @mamal
    assert_response :success
  end

  test "should update mamal" do
    patch :update, id: @mamal, mamal: { pregnancy_time: @mamal.pregnancy_time }
    assert_redirected_to mamal_path(assigns(:mamal))
  end

  test "should destroy mamal" do
    assert_difference('Mamal.count', -1) do
      delete :destroy, id: @mamal
    end

    assert_redirected_to mamals_path
  end
end
