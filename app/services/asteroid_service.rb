class AsteroidService
  def initialize(start_date, end_date)
    @start_date = start_date
    @end_date = end_date
  end

  def days
    JSON.parse(response.body, symbolize_names: true)[:near_earth_objects]
  end

  private
  attr_reader :start_date, :end_date

  def response
    Faraday.get("https://api.nasa.gov/neo/rest/v1/feed", params)
  end

  def params
    {
      start_date: start_date,
      end_date: end_date,
      api_key: ENV['NASA_KEY']
    }
  end
end
