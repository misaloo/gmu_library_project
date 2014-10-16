require 'test_helper'

class UsersControllerTest < ActionController::TestCase
  setup do
    @user = users(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:users)
  end

  test "should get new" do
    get :new
    assert_response :success
  end
# "should create user" test is different from book, p. 196
  test "should create user" do
    assert_difference('User.count') do
      post :create, user: { name: 'sam', password: 'secret', passowrd_confirmation: 'secret' }
    end
# admin: @user.admin, created_at: @user.created_at, name: @user.name, password_digest: @user.password_digest, updated_at: @user.updated_at, user_id: @user.user_id
    assert_redirected_to users_path
  end
# (assigns(:user))

  test "should show user" do
    get :show, id: @user
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @user
    assert_response :success
  end
# admin: @user.admin, created_at: @user.created_at, name: @user.name, password_digest: @user.password_digest, updated_at: @user.updated_at, user_id: @user.user_id
# (assigns(:user))
  test "should update user" do
    patch :update, id: @user, user: { name: @user.name, password: 'secret', password_confirmation: 'secret' }
    assert_redirected_to users_path 
  end

  test "should destroy user" do
    assert_difference('User.count', -1) do
      delete :destroy, id: @user
    end

    assert_redirected_to users_path
  end
end
