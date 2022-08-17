class Current < ActiveSupport::CurrentAttributes
  attribute :account, :person

  class MissingCurrentAccount < StandardError; end

  def account_or_raise!
    raise Current::MissingCurrentAccount, "You must set an account with Current.account=" unless account

    account
  end

  def person=(person)
    super
    self.account      = person.account
    # Time.zone       = user.time_zone
  end
end