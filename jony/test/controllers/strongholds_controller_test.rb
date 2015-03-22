require 'test_helper'

class StrongholdsControllerTest < ActionController::TestCase
  setup do
    @stronghold = strongholds(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:strongholds)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create stronghold" do
    assert_difference('Stronghold.count') do
      post :create, stronghold: { clan: @stronghold.clan, description: @stronghold.description, familyHonor: @stronghold.familyHonor, goldProduction: @stronghold.goldProduction, keywords: @stronghold.keywords, provinceStrength: @stronghold.provinceStrength, typeID: @stronghold.typeID }
    end

    assert_redirected_to stronghold_path(assigns(:stronghold))
  end

  test "should show stronghold" do
    get :show, id: @stronghold
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @stronghold
    assert_response :success
  end

  test "should update stronghold" do
    patch :update, id: @stronghold, stronghold: { clan: @stronghold.clan, description: @stronghold.description, familyHonor: @stronghold.familyHonor, goldProduction: @stronghold.goldProduction, keywords: @stronghold.keywords, provinceStrength: @stronghold.provinceStrength, typeID: @stronghold.typeID }
    assert_redirected_to stronghold_path(assigns(:stronghold))
  end

  test "should destroy stronghold" do
    assert_difference('Stronghold.count', -1) do
      delete :destroy, id: @stronghold
    end

    assert_redirected_to strongholds_path
  end
end
