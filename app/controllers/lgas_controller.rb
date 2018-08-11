class LgasController < ApplicationController

  # GET /lgas
  def index
    @lgas = Lga.all
    json_response(@lgas)
  end

  # GET /lga/:id
  def show
    @lga = Lga.find(params[:id])
    json_response(@lga)
  end

end
