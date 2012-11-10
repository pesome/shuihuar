require 'test_helper'

class UserControllerTest < ActionController::TestCase
  test "should get back_information" do
    get :back_information
    assert_response :success
  end

end
