require 'test_helper'

class AmigasControllerTest < ActionController::TestCase
  setup do
    @amiga = amigas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:amigas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create amiga" do
    assert_difference('Amiga.count') do
      post :create, amiga: { description: @amiga.description, name: @amiga.name, picture: @amiga.picture }
    end

    assert_redirected_to amiga_path(assigns(:amiga))
  end

  test "should show amiga" do
    get :show, id: @amiga
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @amiga
    assert_response :success
  end

  test "should update amiga" do
    patch :update, id: @amiga, amiga: { description: @amiga.description, name: @amiga.name, picture: @amiga.picture }
    assert_redirected_to amiga_path(assigns(:amiga))
  end

  test "should destroy amiga" do
    assert_difference('Amiga.count', -1) do
      delete :destroy, id: @amiga
    end

    assert_redirected_to amigas_path
  end
end
