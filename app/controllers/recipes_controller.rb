class RecipesController < ApplicationController
  before_filter :authenticate_brewer!, except: [:index, :show]

  def index
    @recipes = Recipe.order('name ASC')
  end

  def show
    @recipe = Recipe.find(params[:id])
    @steps = Step.where(recipe_id: @recipe.id)
  end

  def new
    @recipe = Recipe.new
    steps = Recipe::StepTypes::TYPES
    steps.each do |step_name|
      step = @recipe.steps.build
      step.step_type = step_name
    end
  end

  def edit
    @recipe = Recipe.find(params[:id])
  end

  def create
    @recipe = Recipe.new(params[:recipe])
    if @recipe.save
      redirect_to @recipe, notice: 'Recipe was successfully created.'
    else
      render action: "new"
    end
  end

  def update
    @recipe = Recipe.find(params[:id])

    if @recipe.update_attributes(params[:recipe])
      redirect_to @recipe, notice: 'Recipe was successfully updated.'
    else
      render action: "edit"
    end

  end

  def destroy
    @recipe = Recipe.find(params[:id])
    @recipe.destroy
    redirect_to recipes_url
  end
end
