class TasksController < ApplicationController
  before_action :set_task, only: %i[ show edit update destroy ]
  require 'date'

  # GET /tasks or /tasks.json
  def index
    @tasks = Task.all
  end

  # GET /tasks/1 or /tasks/1.json
  def show
    @time = DateTime.now()

  end

  # GET /tasks/new
  def new
    @task = Task.new
    @bookmark = Bookmark.new
  end

  # GET /tasks/1/edit
  def edit

  end

  # POST /tasks or /tasks.json
  def create
    
    @task = Task.new(task_params)
    @task.user_id = current_user.id
    @task.state = "pending"
    @task.category_id = params[:task][:category_id]
    @task.important = params[:task][:important]
    
    respond_to do |format|
      if @task.save
        if @task.important == true
          bookmark = Bookmark.new
          bookmark.user_id = @task.user_id
          bookmark.category_id = @task.category_id
          bookmark.task_id = @task.id
          bookmark.save
        end
        format.html { redirect_to category_url(@task.category_id), notice: "Task was successfully created." }
        format.json { render :show, status: :created, location: @task }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @task.errors, status: :unprocessable_entity }
      end
    end

    # @bookmark = Bookmark.new
    # @bookmark.task_id = @task.id
    # @bookmark.user_id = current_user.id
    # @bookmark.category_id = @task.category_id

    # respond_to do |format|
    #   if @bookmark.save
    #     format.html { redirect_to bookmark_url(@bookmark), notice: "Bookmark was successfully created." }
    #     format.json { render :show, status: :created, location: @bookmark }
    #   else
    #     format.html { render :new, status: :unprocessable_entity }
    #     format.json { render json: @bookmark.errors, status: :unprocessable_entity }
    #   end
    # end


  end

  # PATCH/PUT /tasks/1 or /tasks/1.json
  def update
    id = @task.category_id
    respond_to do |format|
      if @task.update(task_params)
        format.html { redirect_to category_url(id), notice: "Task was successfully updated." }
        format.json { render :show, status: :ok, location: @task }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @task.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tasks/1 or /tasks/1.json
  def destroy
    id = @task.category_id

    @task.destroy

    respond_to do |format|
      format.html { redirect_to category_url(id), notice: "Task was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_task
      @task = Task.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def task_params
      params.require(:task).permit(:content, :deadline, :state, :category_id, :user_id, :important)
    end

    # def bookmark_params
    #   params.require(:bookmark).permit(:task_id, :user_id, :category_id)
    # end

end
