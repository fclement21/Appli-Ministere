require 'test_helper'

class AdminformsControllerTest < ActionController::TestCase
  setup do
    @adminform = adminforms(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:adminforms)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create adminform" do
    assert_difference('Adminform.count') do
      post :create, adminform: { php_project: @adminform.php_project, php_title: @adminform.php_title, redmine_project: @adminform.redmine_project, redmine_title: @adminform.redmine_title }
    end

    assert_redirected_to adminform_path(assigns(:adminform))
  end

  test "should show adminform" do
    get :show, id: @adminform
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @adminform
    assert_response :success
  end

  test "should update adminform" do
    put :update, id: @adminform, adminform: { php_project: @adminform.php_project, php_title: @adminform.php_title, redmine_project: @adminform.redmine_project, redmine_title: @adminform.redmine_title }
    assert_redirected_to adminform_path(assigns(:adminform))
  end

  test "should destroy adminform" do
    assert_difference('Adminform.count', -1) do
      delete :destroy, id: @adminform
    end

    assert_redirected_to adminforms_path
  end
end
