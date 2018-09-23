require 'test_helper'

class EventJoinControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get event_join_index_url
    assert_response :success
  end

end
