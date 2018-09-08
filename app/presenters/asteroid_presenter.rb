require 'date'

class AsteroidPresenter
  attr_reader :start_date, :end_date

  def initialize(start_date, end_date)
    @start_date = Date.parse(start_date).strftime('%Y-%m-%d')
    @end_date = Date.parse(end_date).strftime('%Y-%m-%d')
  end

  def start
    date = Date.parse(@start_date)
    date.strftime('%B %e, %Y')
  end

  def end
    date = Date.parse(@end_date)
    date.strftime('%B %e, %Y')
  end

  def most_dangerous
    (days.max_by { |day| day.dangerous.count })
  end

  def most_dangerous_date
    date = Date.parse(most_dangerous.date.to_s)
    date.strftime('%B %e, %Y')
  end

  def number_dangerous
    most_dangerous.dangerous.count
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
