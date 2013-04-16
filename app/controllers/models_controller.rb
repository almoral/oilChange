class ModelsController < ApplicationController

	respond_to :html, :json

	def index

		if !params[:Year].empty? || !params[:Makes].empty?

	      @carModels = Car.select(:Model).where("Make=? AND Year=?", params[:Makes], params[:Year])

	      respond_with(@carModels)
	

		end

	end

end
