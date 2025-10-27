# app/controllers/tasks_controller.rb
class TasksController < ApplicationController
  before_action :set_task, only: [:show, :edit, :update, :destroy]

  # GET /tasks
  def index
    @tasks = Task.all # Fetches all tasks from the database
  end

  # GET /tasks/1
  def show
    # @task is set by before_action :set_task
  end

  # GET /tasks/new
  def new
    @task = Task.new # Initializes a new Task object for the form
  end

  # GET /tasks/1/edit
  def edit
    # @task is set by before_action :set_task
  end

  # POST /tasks
  def create
    @task = Task.new(task_params) # Creates a new Task with submitted parameters

    if @task.save # Tries to save the task to the database
      redirect_to @task, notice: 'Task was successfully created.' # Redirects to show page on success
    else
      render :new # Renders the new form again with errors if save fails
    end
  end

  # PATCH/PUT /tasks/1
  def update
    if @task.update(task_params) # Tries to update the task with submitted parameters
      redirect_to @task, notice: 'Task was successfully updated.' # Redirects to show page on success
    else
      render :edit # Renders the edit form again with errors if update fails
    end
  end

  # DELETE /tasks/1
  def destroy
    @task.destroy # Deletes the task from the database
    redirect_to tasks_url, notice: 'Task was successfully destroyed.' # Redirects to index page
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_task
      @task = Task.find(params[:id]) # Finds a task by its ID
    end

    # Only allow a list of trusted parameters through.
    def task_params
      # Permits specific parameters that are allowed to be mass-assigned to the Task model
      params.require(:task).permit(:name, :description, :due_date, :completed, :user_id)
    end
end