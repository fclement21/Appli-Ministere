require 'test_helper'

class RedmineAdminsControllerTest < ActionController::TestCase
  setup do
    @redmine_admin = redmine_admins(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:redmine_admins)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create redmine_admin" do
    assert_difference('RedmineAdmin.count') do
      post :create, redmine_admin: { admin_title: @redmine_admin.admin_title }
    end

    assert_redirected_to redmine_admin_path(assigns(:redmine_admin))
  end

  test "should show redmine_admin" do
    get :show, id: @redmine_admin
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @redmine_admin
    assert_response :success
  end

  test "should update redmine_admin" do
    put :update, id: @redmine_admin, redmine_admin: { admin_title: @redmine_admin.admin_title }
    assert_redirected_to redmine_admin_path(assigns(:redmine_admin))
  end

  test "should destroy redmine_admin" do
    assert_difference('RedmineAdmin.count', -1) do
      delete :destroy, id: @redmine_admin
    end

    assert_redirected_to redmine_admins_path
  end
end
