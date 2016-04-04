require 'test_helper'

class ImageDescriptionsControllerTest < ActionController::TestCase
  setup do
    @image_description = image_descriptions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:image_descriptions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create image_description" do
    assert_difference('ImageDescription.count') do
      post :create, image_description: { description: @image_description.description, height: @image_description.height, title: @image_description.title, width: @image_description.width }
    end

    assert_redirected_to image_description_path(assigns(:image_description))
  end

  test "should show image_description" do
    get :show, id: @image_description
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @image_description
    assert_response :success
  end

  test "should update image_description" do
    patch :update, id: @image_description, image_description: { description: @image_description.description, height: @image_description.height, title: @image_description.title, width: @image_description.width }
    assert_redirected_to image_description_path(assigns(:image_description))
  end

  test "should destroy image_description" do
    assert_difference('ImageDescription.count', -1) do
      delete :destroy, id: @image_description
    end

    assert_redirected_to image_descriptions_path
  end
end
