require 'test_helper'

class AuthorExtrasControllerTest < ActionController::TestCase
  setup do
    @author_extra = author_extras(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:author_extras)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create author_extra" do
    assert_difference('AuthorExtra.count') do
      post :create, :author_extra => {  }
    end

    assert_redirected_to author_extra_path(assigns(:author_extra))
  end

  test "should show author_extra" do
    get :show, :id => @author_extra
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @author_extra
    assert_response :success
  end

  test "should update author_extra" do
    put :update, :id => @author_extra, :author_extra => {  }
    assert_redirected_to author_extra_path(assigns(:author_extra))
  end

  test "should destroy author_extra" do
    assert_difference('AuthorExtra.count', -1) do
      delete :destroy, :id => @author_extra
    end

    assert_redirected_to author_extras_path
  end
end
