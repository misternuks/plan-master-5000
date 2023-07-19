class PlanTask < ApplicationRecord
  validates :title, presence: true
  validates :time, numericality: { in: 1..24 }
end
