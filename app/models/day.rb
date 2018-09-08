class Day
  attr_reader :date

  def initialize(day_data)
    @date = day_data.first
    @asteroids = day_data.second
  end

  def asteroids
    @asteroids.map do |asteroid|
      Asteroid.new(asteroid)
    end
  end

  def dangerous_ones
    dangerous = []
    asteroids.map do |asteroid|
      dangerous << asteroid if asteroid.dangerous == true
    end
    dangerous
  end

end
