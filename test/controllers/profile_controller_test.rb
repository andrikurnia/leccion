require 'test_helper'

class ProfileControllerTest < ActionController::TestCase
  test "should get avatar" do
    get :avatar
    assert_response :success
  end

end
