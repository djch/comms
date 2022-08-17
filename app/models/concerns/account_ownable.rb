module AccountOwnable
  extend ActiveSupport::Concern

  included do
    default_scope { where(account: Current.account_or_raise!) }
  end
end