class Day
  attr_reader :date

  def initialize(day_data)
    @date = day_data.first
    @asteroids = day_data.second
  end

  def dangerous_ones
    asteroids.map do |asteroid|
      asteroid if asteroid.dangerous == true
    end.compact
  end

  private

  def asteroids
    @asteroids.map do |asteroid|
      Asteroid.new(asteroid)
    end
  end

end
