require 'test_helper'

class AccountPlansControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:account_plans)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create account_plan" do
    assert_difference('AccountPlan.count') do
      post :create, :account_plan => { }
    end

    assert_redirected_to account_plan_path(assigns(:account_plan))
  end

  test "should show account_plan" do
    get :show, :id => account_plans(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => account_plans(:one).to_param
    assert_response :success
  end

  test "should update account_plan" do
    put :update, :id => account_plans(:one).to_param, :account_plan => { }
    assert_redirected_to account_plan_path(assigns(:account_plan))
  end

  test "should destroy account_plan" do
    assert_difference('AccountPlan.count', -1) do
      delete :destroy, :id => account_plans(:one).to_param
    end

    assert_redirected_to account_plans_path
  end
end
