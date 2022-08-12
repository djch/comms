class Entry < ApplicationRecord
  belongs_to :account
  belongs_to :creator, class_name: "Person"

  delegated_type :entryable, types: %w[ Room Message ]
end
