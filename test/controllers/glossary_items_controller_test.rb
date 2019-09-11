require 'test_helper'

class GlossaryItemsControllerTest < ActionDispatch::IntegrationTest
  test "should get edit" do
    get glossary_items_edit_url
    assert_response :success
  end

  test "should get update" do
    get glossary_items_update_url
    assert_response :success
  end

  test "should get destroy" do
    get glossary_items_destroy_url
    assert_response :success
  end

end
