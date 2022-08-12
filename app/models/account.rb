class Account < ApplicationRecord
  belongs_to :owner, class_name: "Person"
  has_many :members, through: :people

  validates :name, presence: true

  def owner?(user)
    owner_id == user.id
  end
end
