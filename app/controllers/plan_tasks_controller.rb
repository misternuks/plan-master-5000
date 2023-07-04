class PlanTasksController < ApplicationController
  def index
    @tasks = PlanTask.all
  end

  def show
    @task = PlanTask.find(params[:id])
  end

  def new
    @task = PlanTask.new
  end

  def create
    @task = PlanTask.new(plan_task_params)
    @task.user = current_user
    if @task.save
      redirect_to plan_task_path(@task)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @task = PlanTask.find(params[:id])
  end

  def update
    @task = PlanTask.find(params[:id])
    if @task.update(plan_task_params)
      redirect_to plan_task_path(@task)
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @task = PlanTask.find(params[:id])
    @task.destroy
    redirect_to plan_tasks_path, status: :see_other
  end

  private

  def plan_task_params
    params.require(:plan_task).permit(:title, :details, :time, :completed)
  end
end
