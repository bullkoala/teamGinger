require 'test_helper'

class MonkShugenjaAttachmentsControllerTest < ActionController::TestCase
  setup do
    @monk_shugenja_attachment = monk_shugenja_attachments(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:monk_shugenja_attachments)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create monk_shugenja_attachment" do
    assert_difference('MonkShugenjaAttachment.count') do
      post :create, monk_shugenja_attachment: { description: @monk_shugenja_attachment.description, focus: @monk_shugenja_attachment.focus, goldCost: @monk_shugenja_attachment.goldCost, keywords: @monk_shugenja_attachment.keywords, typeID: @monk_shugenja_attachment.typeID }
    end

    assert_redirected_to monk_shugenja_attachment_path(assigns(:monk_shugenja_attachment))
  end

  test "should show monk_shugenja_attachment" do
    get :show, id: @monk_shugenja_attachment
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @monk_shugenja_attachment
    assert_response :success
  end

  test "should update monk_shugenja_attachment" do
    patch :update, id: @monk_shugenja_attachment, monk_shugenja_attachment: { description: @monk_shugenja_attachment.description, focus: @monk_shugenja_attachment.focus, goldCost: @monk_shugenja_attachment.goldCost, keywords: @monk_shugenja_attachment.keywords, typeID: @monk_shugenja_attachment.typeID }
    assert_redirected_to monk_shugenja_attachment_path(assigns(:monk_shugenja_attachment))
  end

  test "should destroy monk_shugenja_attachment" do
    assert_difference('MonkShugenjaAttachment.count', -1) do
      delete :destroy, id: @monk_shugenja_attachment
    end

    assert_redirected_to monk_shugenja_attachments_path
  end
end
