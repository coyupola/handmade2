class WorksController < ApplicationController
  
  def index
    @work = Work.all
  end

  def new
  end
  
  def create
    Work.create(work_params)

  end

  private
  def work_params
     params.permit(:name, :image, :text)
  end



end
