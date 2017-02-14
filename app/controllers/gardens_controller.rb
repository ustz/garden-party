class GardensController < ApplicationController
	def new
		@user = current_user
		@garden = Garden.new
	end

	def create

	end
end
