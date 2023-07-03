class PlanTasksController < ApplicationController
  def index
    @tasks = PlanTask.all
  end
end
