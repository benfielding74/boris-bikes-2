class Bike

  def initialize
    @broken = false
  end

  def working?
    @broken == false ? true : false 
  end

  def report_broken
    @broken = true
  end

  def broken?
    @broken
  end
end

