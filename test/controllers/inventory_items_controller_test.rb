require 'test_helper'

class InventoryItemsControllerTest < ActionController::TestCase
  setup do
    @inventory_item = inventory_items(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:inventory_items)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create inventory_item" do
    assert_difference('InventoryItem.count') do
      post :create, inventory_item: { current_control: @inventory_item.current_control, failure_mode: @inventory_item.failure_mode, part_name: @inventory_item.part_name, recommended_action: @inventory_item.recommended_action, severity: @inventory_item.severity }
    end

    assert_redirected_to inventory_item_path(assigns(:inventory_item))
  end

  test "should show inventory_item" do
    get :show, id: @inventory_item
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @inventory_item
    assert_response :success
  end

  test "should update inventory_item" do
    patch :update, id: @inventory_item, inventory_item: { current_control: @inventory_item.current_control, failure_mode: @inventory_item.failure_mode, part_name: @inventory_item.part_name, recommended_action: @inventory_item.recommended_action, severity: @inventory_item.severity }
    assert_redirected_to inventory_item_path(assigns(:inventory_item))
  end

  test "should destroy inventory_item" do
    assert_difference('InventoryItem.count', -1) do
      delete :destroy, id: @inventory_item
    end

    assert_redirected_to inventory_items_path
  end
end
