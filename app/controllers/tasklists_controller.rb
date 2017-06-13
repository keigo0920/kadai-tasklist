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
    @tasklist = tasklist.new(message_params)

    if @tasklist.save
      flash[:success] = 'Message が正常に投稿されました'
      redirect_to @tasklist
    else
      flash.now[:danger] = 'Message が投稿されませんでした'
      render :new
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  # Strong Parameter
  def message_params
    params.require(:tasklist).permit(:content)
  end

  def edit
        @message = tasklist.find(params[:id])
  end

  def update
    @tasklist = tasklist.find(params[:id])

    if @tasklist.update(tasklist_params)
      flash[:success] = 'Message は正常に更新されました'
      redirect_to @tasklist
    else
      flash.now[:danger] = 'Message は更新されませんでした'
      render :edit
    end
  end

  def destroy
    @tasklist = tasklist.find(params[:id])
    @tasklist.destroy

    flash[:success] = 'Message は正常に削除されました'
    redirect_to tasklist_url
  end
  
  
  private
  def tasklist_params
    params.require(:tasklist).permit(:content)
  end
  
end
