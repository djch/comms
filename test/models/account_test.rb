require "test_helper"

class AccountTest < ActiveSupport::TestCase

  test "owner?" do
    account = accounts(:one)
    assert account.owner?(people(:one))
    refute account.owner?(people(:two))
  end

  test "middleware" do
     account    = accounts(:one)
     path       = "/#{account.id}/rooms"

     middleware = AccountMiddleware.new(->(env) { [200, env, "app"] })
     response = Rack::MockRequest.new(middleware).get(path, "REQUEST_PATH" => path)

     assert_equal Current.account, account
   end
end
