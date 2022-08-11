class Person < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_person_name
  validates :name, presence: true
end
