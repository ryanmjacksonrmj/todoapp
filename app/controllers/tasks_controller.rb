class TasksController < ApplicationController
  def create
    @task = Task.create(
      user_id: params[:user_id],
      title: params[:title],
      description: params[:description],
      deadline: params[:deadline],
      completed: params[:completed],
    )
    render :show
  end

  def update
    @task = Task.find(params[:id])
    @task.update(
      user_id: params[:user_id] || @task.user_id,
      title: params[:title] || @task.title,
      description: params[:description] || @task.description,
      deadline: params[:deadline] || @task.deadline,
      completed: params[:completed] || @task.completed,
    )
    render :show
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy
    render json: { message: "Task destroyed successfully" }
  end
end
