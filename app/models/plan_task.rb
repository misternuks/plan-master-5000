class PlanTask < ApplicationRecord
  belongs_to :user

  validates :title, presence: true
  validates :time, numericality: { in: 1..24 }
end
