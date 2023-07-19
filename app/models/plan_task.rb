class PlanTask < ApplicationRecord
  validates :title, presence: true
end
