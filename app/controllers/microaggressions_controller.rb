require 'pry'

class MicroaggressionsController < ApplicationController

	def new
		@micro = Microaggression.new
	end

	def create
		@micro = Microaggression.new(micro_params)
		binding.pry
		@micro.user = current_user
		if @micro.valid?
			@micro.save
			redirect_to "/"
		else
			render 'new'
		end
	end

	def index
		@micros = Microaggression.all
	end

	private
		def micro_params
			params.require(:microaggression).permit(:user,:location,:description,:aggressor,:severity)
		end

end
