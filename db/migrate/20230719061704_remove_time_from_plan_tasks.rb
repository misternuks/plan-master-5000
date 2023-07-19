class RemoveTimeFromPlanTasks < ActiveRecord::Migration[7.0]
  def change
    remove_column :plan_tasks, :time, :integer
  end
end
