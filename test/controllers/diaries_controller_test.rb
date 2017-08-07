require 'test_helper'

class DiariesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

end
