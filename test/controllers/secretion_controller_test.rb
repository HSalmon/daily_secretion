require 'test_helper'

class SecretionControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

end
