require 'test_helper'

class Api::V1::ScheduleControllerTest < ActionController::TestCase
  test "should get load_events" do
    get :load_events
    assert_response :success
  end

end
