require 'test_helper'

class AccrualsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:accruals)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create accrual" do
    assert_difference('Accrual.count') do
      post :create, :accrual => { }
    end

    assert_redirected_to accrual_path(assigns(:accrual))
  end

  test "should show accrual" do
    get :show, :id => accruals(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => accruals(:one).to_param
    assert_response :success
  end

  test "should update accrual" do
    put :update, :id => accruals(:one).to_param, :accrual => { }
    assert_redirected_to accrual_path(assigns(:accrual))
  end

  test "should destroy accrual" do
    assert_difference('Accrual.count', -1) do
      delete :destroy, :id => accruals(:one).to_param
    end

    assert_redirected_to accruals_path
  end
end
