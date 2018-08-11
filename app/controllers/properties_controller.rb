class PropertiesController < ApplicationController

  # GET /properties
  def index
    @props = Property.all
    @results = []

    @props.each do |prop|
      result = prop.attributes

      # add other properties from related things
      address = Address.find_by_property_id(prop.full_property_id)
      result[:full_address] = address.full_address
      result[:postcode] = address.postcode
      result[:state] = address.state
      
      lga = Lga.find_by_code(prop.lga_code)
      result[:council] = lga.name

      @results << result
    end

    json_response(@results)
  end

  # GET /property/:id
  def show
    @prop = Property.find(params[:id])
    json_response(@prop)
  end

end
