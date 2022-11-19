require 'test_helper'

class GroupExpendituresControllerTest < ActionDispatch::IntegrationTest
  setup do
    @group_expenditure = group_expenditures(:one)
  end

  test 'should get index' do
    get group_expenditures_url
    assert_response :success
  end

  test 'should get new' do
    get new_group_expenditure_url
    assert_response :success
  end

  test 'should create group_expenditure' do
    assert_difference('GroupExpenditure.count') do
      post group_expenditures_url, params: { group_expenditure: {} }
    end

    assert_redirected_to group_expenditure_url(GroupExpenditure.last)
  end

  test 'should show group_expenditure' do
    get group_expenditure_url(@group_expenditure)
    assert_response :success
  end

  test 'should get edit' do
    get edit_group_expenditure_url(@group_expenditure)
    assert_response :success
  end

  test 'should update group_expenditure' do
    patch group_expenditure_url(@group_expenditure), params: { group_expenditure: {} }
    assert_redirected_to group_expenditure_url(@group_expenditure)
  end

  test 'should destroy group_expenditure' do
    assert_difference('GroupExpenditure.count', -1) do
      delete group_expenditure_url(@group_expenditure)
    end

    assert_redirected_to group_expenditures_url
  end
end
