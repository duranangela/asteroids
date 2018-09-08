class AsteroidService
  attr_reader :start_date, :end_date

  def initialize(start_date, end_date)
    @start_date = start_date
    @end_date = end_date
  end

  def days
    JSON.parse(response.body, symbolize_names: true)[:near_earth_objects]
  end

  def response
    Faraday.get("https://api.nasa.gov/neo/rest/v1/feed", params)
  end

  # def conn
  #   Faraday.new(url: "https://api.nasa.gov/neo/rest/v1/feed") do |faraday|
  #     farady.adapter Faraday.default_adapter
  #   end
  # end

  def params
    {
      api_key: 'N7fOcxE1sKo8lxhYLEtvfQtDVxQRXK3rJckZ5cB8',
      start_date: start_date,
      end_date: end_date
    }
  end
end
