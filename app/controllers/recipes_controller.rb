class RecipesController < ApplicationController
  def new
    @recipe = Recipe.new
    # Build 3 empty ingredients so they show up in the form
    3.times { @recipe.ingredients.build }
  end

  def create
    @recipe = Recipe.new(recipe_params)
    if @recipe.save
      redirect_to @recipe, notice: "Recipe created successfully!"
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @recipe = Recipe.find(params[:id])
    3.times { @recipe.ingredients.build }
  end

  def update
    @recipe = Recipe.find(params[:id])
    if @recipe.update(recipe_params)
      redirect_to @recipe, notice: "Recipe updated successfully!"
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def index
    @recipes = Recipe.all
  end

  def show
    @recipe = Recipe.find(params[:id])
  end

  private

  def recipe_params
    params.require(:recipe).permit(:name, :instructions, :user_id, 
      ingredients_attributes: [:id, :name, :quantity, :_destroy],
      tag_ids: [])
  end

end
