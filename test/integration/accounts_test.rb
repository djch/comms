require 'test_helper'

class AccountsTest < ActionDispatch::IntegrationTest
  test "middleware" do
    sign_in people(:one)
    ActionDispatch::IntegrationTest.app = AccountMiddleware.new(ActionDispatch::IntegrationTest.app)

    account = accounts(:one)
    get "/#{account.id}/rooms", env: { "REQUEST_PATH" => "/#{account.id}/rooms" }

    assert_response :success
  end
end