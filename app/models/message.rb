class Message < ApplicationRecord
  include Entryable

  belongs_to :room
end
