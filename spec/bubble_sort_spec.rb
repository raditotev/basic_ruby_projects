require_relative '../bubble_sort.rb'

describe "bubble_sort function" do

  it "orders numbers from small to big" do
    expect(bubble_sort([3,4,5,2,1])).to eql([1, 2, 3, 4, 5])
  end

  it "orders equal numbers" do
    expect(bubble_sort([1, 1, 1, 1, 1])).to eql([1, 1, 1, 1, 1])
  end

  it "orders multifle matching numbers" do
    expect(bubble_sort([2, 5, 1, 5, 2])).to eql([1, 2, 2, 5, 5])
  end

  it "orders two digit numbers" do
    expect(bubble_sort([22, 15, 71, 53, 12])).to eql([12, 15, 22, 53, 71])
  end

  it "doesn't throw an error when array argument missing" do
    expect(bubble_sort).to eql([])
  end

end
