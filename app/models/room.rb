class Room < ApplicationRecord
  include Entryable

  has_many :messages

  validates :title, presence: true
end
