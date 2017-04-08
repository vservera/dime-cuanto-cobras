require 'http'
require 'byebug'

MADRID_URL = 'http://api.rentswatch.com/api/cities/madrid'

response = HTTP.get(MADRID_URL)

puts response.body
