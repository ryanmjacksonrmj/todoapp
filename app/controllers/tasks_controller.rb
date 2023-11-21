class TasksController < ApplicationController
  def index
    @tasks = Task.all
    render :index
  end

  def show
    @task = Task.find_by(id: params[:id])
    render :show
  end
end
