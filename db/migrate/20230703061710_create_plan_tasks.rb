class CreatePlanTasks < ActiveRecord::Migration[7.0]
  def change
    create_table :plan_tasks do |t|
      t.string :title
      t.text :details
      t.integer :time
      t.timestamps
    end
  end
end
