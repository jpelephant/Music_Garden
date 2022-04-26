require 'test_helper'

class Admins::AdminControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get admins_admin_show_url
    assert_response :success
  end

  test "should get edit" do
    get admins_admin_edit_url
    assert_response :success
  end

  test "should get update" do
    get admins_admin_update_url
    assert_response :success
  end

end
