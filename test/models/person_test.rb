require "test_helper"

class PersonTest < ActiveSupport::TestCase
  # NOTE #
  # Most of our login/identity system is coming directly from the Devise gem
  # So we only need to test the elements of the Person class we've added

  def setup
    @person = Person.new(
          name: "Charles Danielworth",
         email: "charliedan@example.com",
      password: "stkilda1966")
  end

  test "should pass validation" do
    assert @person.valid?
  end

  test "name should be present" do
    @person.name = "  "
    assert_not @person.valid?
  end
end
