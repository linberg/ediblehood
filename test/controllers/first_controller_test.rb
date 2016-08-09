require "test_helper"

class FirstControllerTest < ActionController::TestCase
  def test_about
    get :about
    assert_response :success
  end

end
