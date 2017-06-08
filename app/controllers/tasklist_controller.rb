class TasklistsController < ApplicationController
  def index
    @tasklists = Tasklist.all
  end

  def show
    @tasklists = Tasklist.find(params[:id])
  end

  def new
    @tasklist = Tasklist.new
  end

  def create
    @tasklist = Tasklist.find(params[:id])
  end

  def edit
  end

  def update
  end

  def destroy
  end
  
  private
  def tasklist_params
    params.require(:tasklist).permit(:content)
  end
  
end
