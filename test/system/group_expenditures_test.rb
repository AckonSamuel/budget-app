require 'application_system_test_case'

class GroupExpendituresTest < ApplicationSystemTestCase
  setup do
    @group_expenditure = group_expenditures(:one)
  end

  test 'visiting the index' do
    visit group_expenditures_url
    assert_selector 'h1', text: 'Group expenditures'
  end

  test 'should create group expenditure' do
    visit group_expenditures_url
    click_on 'New group expenditure'

    click_on 'Create Group expenditure'

    assert_text 'Group expenditure was successfully created'
    click_on 'Back'
  end

  test 'should update Group expenditure' do
    visit group_expenditure_url(@group_expenditure)
    click_on 'Edit this group expenditure', match: :first

    click_on 'Update Group expenditure'

    assert_text 'Group expenditure was successfully updated'
    click_on 'Back'
  end

  test 'should destroy Group expenditure' do
    visit group_expenditure_url(@group_expenditure)
    click_on 'Destroy this group expenditure', match: :first

    assert_text 'Group expenditure was successfully destroyed'
  end
end
