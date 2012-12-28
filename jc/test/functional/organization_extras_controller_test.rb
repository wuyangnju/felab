require 'test_helper'

class OrganizationExtrasControllerTest < ActionController::TestCase
  setup do
    @organization_extra = organization_extras(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:organization_extras)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create organization_extra" do
    assert_difference('OrganizationExtra.count') do
      post :create, :organization_extra => {  }
    end

    assert_redirected_to organization_extra_path(assigns(:organization_extra))
  end

  test "should show organization_extra" do
    get :show, :id => @organization_extra
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @organization_extra
    assert_response :success
  end

  test "should update organization_extra" do
    put :update, :id => @organization_extra, :organization_extra => {  }
    assert_redirected_to organization_extra_path(assigns(:organization_extra))
  end

  test "should destroy organization_extra" do
    assert_difference('OrganizationExtra.count', -1) do
      delete :destroy, :id => @organization_extra
    end

    assert_redirected_to organization_extras_path
  end
end
