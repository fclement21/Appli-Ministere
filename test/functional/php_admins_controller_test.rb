require 'test_helper'

class PhpAdminsControllerTest < ActionController::TestCase
  setup do
    @php_admin = php_admins(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:php_admins)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create php_admin" do
    assert_difference('PhpAdmin.count') do
      post :create, php_admin: { admin_title: @php_admin.admin_title, php_project: @php_admin.php_project }
    end

    assert_redirected_to php_admin_path(assigns(:php_admin))
  end

  test "should show php_admin" do
    get :show, id: @php_admin
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @php_admin
    assert_response :success
  end

  test "should update php_admin" do
    put :update, id: @php_admin, php_admin: { admin_title: @php_admin.admin_title, php_project: @php_admin.php_project }
    assert_redirected_to php_admin_path(assigns(:php_admin))
  end

  test "should destroy php_admin" do
    assert_difference('PhpAdmin.count', -1) do
      delete :destroy, id: @php_admin
    end

    assert_redirected_to php_admins_path
  end
end
