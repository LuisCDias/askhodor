class TrendinessController < ApplicationController

  def index
    #https://api.stackexchange.com/2.2/tags?order=desc&sort=popular&site=stackoverflow
    @conn = Faraday.new(:url => 'https://api.stackexchange.com/2.2/') do |faraday|
      faraday.request  :url_encoded             # form-encode POST params
      faraday.response :logger                  # log requests to STDOUT
      faraday.adapter  Faraday.default_adapter  # make requests with Net::HTTP
    end

    response = @conn.get 'tags?order=desc&sort=popular&site=stackoverflow', { order: "desc", sort: "popular", site: "stackoverflow"}

    trendy = JSON.parse(response.body)

    render json: trendy
  end
end
