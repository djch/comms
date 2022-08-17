class Entry < ApplicationRecord
  include AccountOwnable

  belongs_to :account
  belongs_to :creator, class_name: "Person"

  delegated_type :entryable, types: %w[ Room Message ]
  delegate :creator, to: :entryable
  accepts_nested_attributes_for :entryable
end
