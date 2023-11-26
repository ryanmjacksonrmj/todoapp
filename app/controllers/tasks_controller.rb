class TasksController < ApplicationController
  before_action :authenticate_admin, except: [:index, :show]
  
  def create
    @task = Todo.create(
      user_id: current_user.id,
      title: params[:title],
      description: params[:description],
      deadline: params[:deadline],
      completed: params[:completed],
    )
    render :show
  end

  def update
    @task = Todo.find(params[:id])
    @task.update(
      title: params[:title] || @task.title,
      description: params[:description] || @task.description,
      deadline: params[:deadline] || @task.deadline,
      completed: params[:completed] || @task.completed,
    )
    render :show
  end

  def destroy
    @task = Todo.find(params[:id])
    @task.destroy
    render json: { message: "Task destroyed successfully" }
  end

  def index
    @tasks = Todo.all.order(deadline: :asc)
    render :index
  end

  def show
    @task = Todo.find_by(id: params[:id])
    render :show
  end
end
