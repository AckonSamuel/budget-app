require "application_system_test_case"

class EntityGroupsTest < ApplicationSystemTestCase
  setup do
    @entity_group = entity_groups(:one)
  end

  test "visiting the index" do
    visit entity_groups_url
    assert_selector "h1", text: "Entity groups"
  end

  test "should create entity group" do
    visit entity_groups_url
    click_on "New entity group"

    click_on "Create Entity group"

    assert_text "Entity group was successfully created"
    click_on "Back"
  end

  test "should update Entity group" do
    visit entity_group_url(@entity_group)
    click_on "Edit this entity group", match: :first

    click_on "Update Entity group"

    assert_text "Entity group was successfully updated"
    click_on "Back"
  end

  test "should destroy Entity group" do
    visit entity_group_url(@entity_group)
    click_on "Destroy this entity group", match: :first

    assert_text "Entity group was successfully destroyed"
  end
end
