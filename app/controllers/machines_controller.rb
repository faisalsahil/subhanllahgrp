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
end
