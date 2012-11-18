class StepsController < ApplicationController
  before_filter :authenticate_brewer!, except: [:index, :show]

  def index
    @steps = Step.all
  end

  def show
    @step = Step.find(params[:id])
  end

  def new
    @step = Step.new
  end

  def edit
    @step = Step.find(params[:id])
  end

  def create
    @step = Step.new(params[:step])

    if @step.save
      redirect_to @step, notice: 'Step was successfully created.'
    else
      render action: "new"

    end
  end

  def update
    @step = Step.find(params[:id])

    if @step.update_attributes(params[:step])
      redirect_to @step, notice: 'Step was successfully updated.'
    else
      render action: "edit"
    end

  end

  def destroy
    @step = Step.find(params[:id])
    @step.destroy
    redirect_to steps_url
  end
end
