require 'test_helper'

class SenseisControllerTest < ActionController::TestCase
  setup do
    @sensei = senseis(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:senseis)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sensei" do
    assert_difference('Sensei.count') do
      post :create, sensei: { description: @sensei.description, familyHonor: @sensei.familyHonor, goldProduction: @sensei.goldProduction, keywords: @sensei.keywords, provinceStrength: @sensei.provinceStrength, typeID: @sensei.typeID }
    end

    assert_redirected_to sensei_path(assigns(:sensei))
  end

  test "should show sensei" do
    get :show, id: @sensei
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @sensei
    assert_response :success
  end

  test "should update sensei" do
    patch :update, id: @sensei, sensei: { description: @sensei.description, familyHonor: @sensei.familyHonor, goldProduction: @sensei.goldProduction, keywords: @sensei.keywords, provinceStrength: @sensei.provinceStrength, typeID: @sensei.typeID }
    assert_redirected_to sensei_path(assigns(:sensei))
  end

  test "should destroy sensei" do
    assert_difference('Sensei.count', -1) do
      delete :destroy, id: @sensei
    end

    assert_redirected_to senseis_path
  end
end
