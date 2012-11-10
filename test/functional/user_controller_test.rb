require 'test_helper'

class UserControllerTest < ActionController::TestCase
  test "should get basic_information" do
    get :basic_information
    assert_response :success
  end

end
