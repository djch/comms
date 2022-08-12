require "test_helper"

class AccountTest < ActiveSupport::TestCase

  test "owner?" do
    account = accounts(:one)
    assert account.owner?(people(:one))
    refute account.owner?(people(:two))
  end
end
