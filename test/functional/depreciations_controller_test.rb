require 'test_helper'

class DepreciationsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:depreciations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create depreciation" do
    assert_difference('Depreciation.count') do
      post :create, :depreciation => { }
    end

    assert_redirected_to depreciation_path(assigns(:depreciation))
  end

  test "should show depreciation" do
    get :show, :id => depreciations(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => depreciations(:one).to_param
    assert_response :success
  end

  test "should update depreciation" do
    put :update, :id => depreciations(:one).to_param, :depreciation => { }
    assert_redirected_to depreciation_path(assigns(:depreciation))
  end

  test "should destroy depreciation" do
    assert_difference('Depreciation.count', -1) do
      delete :destroy, :id => depreciations(:one).to_param
    end

    assert_redirected_to depreciations_path
  end
end
