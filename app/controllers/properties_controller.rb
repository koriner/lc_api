class PropertiesController < ApplicationController

  # GET /properties
  def index
    @props = Property.all
    json_response(@props)
  end

  # GET /property/:id
  def show
    @prop = Property.find(params[:id])
    json_response(@prop)
  end

end
