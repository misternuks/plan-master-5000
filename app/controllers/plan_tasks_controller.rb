class PlanTasksController < ApplicationController
  def index
    @tasks = PlanTask.all
  end

  def show
    @task = PlanTask.find(params[:id])
  end

  private

  def plan_task_params
    params.require(:plan_task).permit(:id)
  end
end
