class IngredientsController < ApplicationController
	def new
		@ingredient = Ingredient.new
	end

	def create
		@ingredient = Ingredient.create(ingredient_params)
		redirect_to ingredient_path(@ingredient)
	end

	def show
		find_ingredient
	end

	def edit
		find_ingredient
	end

	def update
		find_ingredient
		@ingredient.update(ingredient_params)
		redirect_to ingredient_path(@ingredient)
	end

	private

	def ingredient_params
		params.require(:ingredient).permit(:name)
	end

	def find_ingredient
		@ingredient = Ingredient.find(params[:id])
	end
end
