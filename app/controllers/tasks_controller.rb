class TasksController < ApplicationController
  before_action :find_task, only:[:show, :edit, :update, :destroy]

  def index
    @tasks = Task.all.created_desc
  end

  def show
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(task_params)

    if @task.save
      redirect_to task_path(@task), notice: "新增成功!"
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @task.update(task_params)
      redirect_to task_path(@task), notice: "資料更新成功!"
    else
      render :edit
    end
  end

  def destroy
    @task.destroy if @task
    redirect_to tasks_path, notice: "任務已刪除"
  end

  private
  def find_task
    @task = Task.find_by(id: params[:id])
  end

  def task_params
    params.require(:task).permit(:description, :end_at)
  end
end
