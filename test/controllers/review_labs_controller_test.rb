require 'test_helper'

class ReviewLabsControllerTest < ActionDispatch::IntegrationTest
  test "should get review" do
    get review_labs_review_url
    assert_response :success
  end

end
