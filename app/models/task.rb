class Task < ApplicationRecord

  scope :created_desc, -> { order(created_at: :desc) }

  validates :description, presence: true, length: { minimum: 5 }
  validates :end_at, presence: true

end
