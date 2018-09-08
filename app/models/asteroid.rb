class Asteroid
  attr_reader :name, :neo_ref_id, :dangerous

  def initialize(info)
    @name = info[:name]
    @neo_ref_id = info[:neo_reference_id]
    @dangerous = info[:is_potentially_hazardous_asteroid]
  end

end
