require 'test_helper'

class CampaignsControllerTest < ActionDispatch::IntegrationTest
  test "should get results" do
    get campaigns_results_url
    assert_response :success
  end

end
