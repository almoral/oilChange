class MakesController < ApplicationController

	respond_to :html, :json

	def index

    if !params[:Year].empty?

      @carMakes = Car.select(:Make).where("Year=?", params[:Year]).uniq

 		respond_with(@carMakes)



    end

	end

end
