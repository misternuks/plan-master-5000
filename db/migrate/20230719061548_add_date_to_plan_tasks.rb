class AddDateToPlanTasks < ActiveRecord::Migration[7.0]
  def change
    add_column :plan_tasks, :date, :date
  end
end
