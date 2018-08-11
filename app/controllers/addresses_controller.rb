class AddressesController < ApplicationController

  # GET /addresses
  def index
    @addresses = Address.all
    json_response(@addresses)
  end

  # GET /addresses/:id
  def show
    @address = Address.find(params[:id])
    json_response(@address)
  end

end
