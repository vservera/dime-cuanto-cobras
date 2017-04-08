require 'http'
require 'byebug'

class Rentswatch

  AUTH_TOKEN = ENV['RENTSWATCH_API_KEY']

  MADRID_URL = 'http://api.rentswatch.com/api/cities/madrid'
  LOCATION_URL = "http://api.rentswatch.com/api/cities/geocode"

  def self.single_city_statistics
    response = HTTP.get(MADRID_URL)

    response.body
  end

  def self.neighborhood_statistics
    neighborhoods.each do |neighborhood|
      response = HTTP.get("#{LOCATION_URL}?q=#{neighborhood}&token=#{AUTH_TOKEN}")

      json_content = JSON.pretty_generate(JSON.parse(response.body))

      File.write("response_data/neighborhood_statistics/#{neighborhood_slug(neighborhood)}.json", json_content)
    end
  end

  private

    def self.neighborhoods
      [ "Arganzuela", "Barajas", "Carabanchel", "Centro", "Chamartín", "Chamberí", "Ciudad Lineal", "Fuencarral-El Pardo", "Hortaleza", "Latina", "Moncloa-Aravaca", "Moratalaz", "Puente de Vallecas", "Retiro", "Salamanca", "San Blas", "Tetuán", "Usera", "Vicálvaro", "Villa de Vallecas", "Villaverde" ]
    end

    def self.neighborhood_slug(neighborhood)
      neighborhood.downcase.gsub(' ', '-')
    end

end

