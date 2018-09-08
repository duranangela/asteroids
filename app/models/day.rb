class Day

  def initialize(asteroids)
    @asteroids = asteroids
  end

  def asteroids
    @asteroids.map do |asteroid|
      Asteroid.new(asteroid)
    end
  end

end
