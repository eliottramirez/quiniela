require "test_helper"

class PartyInviteControllerTest < ActionDispatch::IntegrationTest
  test "should get send_invite" do
    get party_invite_send_invite_url
    assert_response :success
  end
end
