require 'spec_helper'

describe 'Unit' do

  context "conversion" do
    it "returns 1000 for meters" do
      unit = Unit::M
      expect(unit.convert_to_mm(1)).to eq(1000)
    end

    it "returns 10 for cms" do
      unit = Unit::CM
      expect(unit.convert_to_mm(1)).to eq(10)
    end

    it "returns 1 for mm" do
      unit = Unit::MM
      expect(unit.convert_to_mm(1)).to eq(1)
    end
  end

  context "Convert" do
    it "1mm into 1mm" do
      unit = Unit::MM
      expect(unit.convert_to_mm(1) ).to eq(1)
    end
    it "1cm into 10mm" do
      unit = Unit::CM
      expect(unit.convert_to_mm(1) ).to eq(10)
    end
    it "1m into 1000mm" do
      unit = Unit::M
      expect(unit.convert_to_mm(1) ).to eq(1000)
    end
  end

end
