require "test_helper"

class EntityGroupsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @entity_group = entity_groups(:one)
  end

  test "should get index" do
    get entity_groups_url
    assert_response :success
  end

  test "should get new" do
    get new_entity_group_url
    assert_response :success
  end

  test "should create entity_group" do
    assert_difference("EntityGroup.count") do
      post entity_groups_url, params: { entity_group: {  } }
    end

    assert_redirected_to entity_group_url(EntityGroup.last)
  end

  test "should show entity_group" do
    get entity_group_url(@entity_group)
    assert_response :success
  end

  test "should get edit" do
    get edit_entity_group_url(@entity_group)
    assert_response :success
  end

  test "should update entity_group" do
    patch entity_group_url(@entity_group), params: { entity_group: {  } }
    assert_redirected_to entity_group_url(@entity_group)
  end

  test "should destroy entity_group" do
    assert_difference("EntityGroup.count", -1) do
      delete entity_group_url(@entity_group)
    end

    assert_redirected_to entity_groups_url
  end
end
