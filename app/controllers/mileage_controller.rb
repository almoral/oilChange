class MileageController < ApplicationController

	respond_to :html, :json

	def index
    if !params[:Year].empty? && !params[:Models].empty?

      @carMileage = Car.select(:Mileage).where("Model=? AND Year=?", params[:Models], params[:Year])

      respond_with(@carMileage)
#
    end
	end
end
