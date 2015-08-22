class MachinesController < ApplicationController

	def new
		@machine = Machine.new
	end

	def create 
		@machine = Machine.new(params[:machine])
		@machine.save
		redirect_to root_url
	end

	def show
		@categories = Category.all
		@machine = Machine.find(params[:id])
	end

	def edit
		@machine = Machine.find(params[:id])
	end

	def update
		@machine = Machine.find(params[:id])
		@machine.update_attributes(params[:machine])
		flash[:success] = "Successfully updated."
		redirect_to root_url
	end
end
