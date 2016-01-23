require_relative '../enumerable.rb'

describe Enumerable do

  before do
    @array1 = ["a", "b", "c"]
    @array2 = [1, 2, 3]
    @array3 = ["a", nil, "c"]
    @array4 = [nil, nil]
  end

  describe "#my_each" do
    it "has to function like #each" do
      result1 = []
      result2 = []
      @array2.my_each{|n| result1 << n + 1}
      @array2.each{|n| result2 << n + 1}
      expect(result1).to eql(result2)
    end
  end

  describe "#my_each_with_index" do
    it "has to function like #each_with_index" do
      result1 = {}
      result2 = {}
      @array1.my_each_with_index {|element, index| result1[element] = index}
      @array1.each_with_index {|element, index| result2[element] = index}
      expect(result1).to eql(result2)
    end
  end

  describe "#my_all?" do
    it "has to function like #all?" do
      expect(@array1.my_all?).to eql(@array1.all?)
      expect(@array3.my_all?).to eql(@array3.all?)
    end
  end

  describe "#my_any?" do
    it "has to function like #any?" do
      expect(@array1.my_any?).to eql(@array1.any?)
      expect(@array3.my_any?).to eql(@array3.any?)
      expect(@array4.my_any?).to eql(@array4.any?)
    end
  end

  describe "#my_none?" do
    it "has to function like #none?" do
      expect(@array1.my_none?).to eql(@array1.none?)
      expect(@array3.my_none?).to eql(@array3.none?)
      expect(@array4.my_none?).to eql(@array4.none?)
    end
  end

  describe "#my_count" do
    it "has to function like #count" do
      expect(@array1.my_count).to eql(@array1.count)
      expect([].my_count).to eql([].count)
    end
  end

  describe "#my_map" do
    it "has to function like #map" do
      expect(@array1.my_map{|l| l + "s"}).to eql(@array1.map{|l| l + "s"})
      expect(@array2.my_map{|n| n + 10}).to eql(@array2.map{|n| n + 10})
      expect(@array3.my_map{|el| el = true}).to eql(@array3.map{|el| el = true})
    end
  end

  describe "#my_inject" do
    it "has to function like #inject" do
      expect(@array2.my_inject{|sum, n| sum + n}).to eql(@array2.inject{|sum, n| sum + n})
      expect(@array2.my_inject {|product, n| product * n}).to eql(@array2.inject {|product, n| product * n})
    end
  end

  describe "#multiply_elements" do
    it "has to function like #inject multiplying each element" do
      expect(@array2.my_inject {|product, n| product * n}).to eql(@array2.multiply_elements)
    end
  end

end


