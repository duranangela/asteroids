class MostDangerousDayController < ApplicationController

  def index
    @presenter = AsteroidPresenter.new(params[:start_date], params[:end_date])
  end
  
end
