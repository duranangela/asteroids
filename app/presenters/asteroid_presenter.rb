require 'date'

class AsteroidPresenter

  def initialize(start_date, end_date)
    @start_date = start_date
    @end_date = end_date
  end

  def start_date
    date = Date.parse(@start_date)
    date.strftime('%B %e, %Y')
  end

  def end_date
    date = Date.parse(@end_date)
    date.strftime('%B %e, %Y')
  end

  def most_dangerous
  end

  def number_dangerous
  end

  def asteroids
    days
  end

  def days
    service.days.map do |day_data|
      Day.new(day_data)
    end
  end

  def service
    AsteroidService.new(@start_date, @end_date)
  end

end
