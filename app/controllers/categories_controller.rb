class CategoriesController < ApplicationController

	def new
		@category = Category.new
	end

	def create
		@category = Category.new(params[:category])
		@category.save
		redirect_to root_url
	end

	def show
		@category = Category.find(params[:id])
		@machines = @category.machines
		@categories = Category.all
	end

	def edit
		@category = Category.find(params[:id])
	end

	def update
		@category = Category.find(params[:id])
		@category.update_attributes(params[:category])
		flash[:success] = "Successfully updated."
		redirect_to root_url
	end
end
