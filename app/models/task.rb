class Task < ApplicationRecord
  # scope :updated_desc, -> { order(updated_at: :desc) }
  scope :created_desc, -> { order(created_at: :desc) }
end
