class TasklistController < ApplicationController
  def index
    @messages = Tasklist.all
  end

  def show
    @message = Tasklist.find(params[:id])
  end

  def new
    @message = Tasklist.new
  end

  def create
    @message = Tasklist.find(params[:id])
  end

  def edit
  end

  def update
  end

  def destroy
  end
end