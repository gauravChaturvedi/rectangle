# provides constants and conversion factor for units
class Unit

  def initialize value
    @conversion_factor = value
  end

  def convert_to_mm value
    value * @conversion_factor
  end
end

#puts Unit::MM
Unit::MM = Unit.new(1)
Unit::CM = Unit.new(10)
Unit::M = Unit.new(1000)
