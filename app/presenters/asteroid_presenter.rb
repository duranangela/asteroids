class AsteroidPresenter
  attr_reader :start_date, :end_date

  def initialize(start_date, end_date)
    @start_date = start_date
    @end_date = end_date
  end

  def start
    date = Date.parse(@start_date)
    date.strftime('%Y-%m-%d')
  end

  def stop
    date = Date.parse(@end_date)
    date.strftime('%Y-%m-%d')
  end

  def most_dangerous_day
    (days.max_by { |day| day.dangerous_ones.count })
  end

  def most_dangerous_date
    date = Date.parse(most_dangerous_day.date.to_s)
    date.strftime('%B %e, %Y')
  end

  def number_dangerous
    most_dangerous_day.dangerous_ones.count
  end

  private

  def days
    service.days.map do |day_data|
      Day.new(day_data)
    end
  end

  def service
    AsteroidService.new(start, stop)
  end

end
