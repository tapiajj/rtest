require 'test_helper'

class AttributesControllerTest < ActionController::TestCase
  setup do
    @detail = attributes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:details)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create attribute" do
    assert_difference('Attribute.count') do
      post :create, detail: { description: @detail.description, limit: @detail.limit, picture: @detail.picture, price: @detail.price, product_id: @detail.product_id, short_desc: @detail.short_desc, title: @detail.title }
    end

    assert_redirected_to attribute_path(assigns(:detail))
  end

  test "should show attribute" do
    get :show, id: @detail
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @detail
    assert_response :success
  end

  test "should update attribute" do
    patch :update, id: @detail, detail: { description: @detail.description, limit: @detail.limit, picture: @detail.picture, price: @detail.price, product_id: @detail.product_id, short_desc: @detail.short_desc, title: @detail.title }
    assert_redirected_to attribute_path(assigns(:detail))
  end

  test "should destroy attribute" do
    assert_difference('Attribute.count', -1) do
      delete :destroy, id: @detail
    end

    assert_redirected_to attributes_path
  end
end
