class PagesController < ApplicationController

def home
  Google::Maps.configure do |config|
    config.authentication_mode = Google::Maps::Configuration::API_KEY
    config.api_key = 'AIzaSyCNPaUkWFShpZMAgn7u4aebcq7LPPxFmEI'
  end
  @orders = Order.all
end

end
