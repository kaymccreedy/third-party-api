class ArtresourcesController < ApplicationController

  def index
    response = HTTP.get("https://api.harvardartmuseums.org/#{params[:resource_type]}?apikey=#{Rails.application.credentials.artresources_api}")
    render json: response.parse(:json)
  end

end
