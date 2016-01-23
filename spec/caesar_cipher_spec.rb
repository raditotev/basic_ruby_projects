require_relative '../caesar_cipher.rb'

describe " the caesar_cypher function" do
  it "returns next capital letter" do
    expect(caesar_cypher("A", 1)).to eq("B")
  end

  it "returns next downcase letter"do
    expect(caesar_cypher "a", 1).to eql("b")
  end

  it "starts from beggining when last capital letter" do
    expect(caesar_cypher("Z", 1)).to eq("A")
  end

  it "starts from beggining when last small letter" do
    expect(caesar_cypher("z", 1)).to eq("a")
  end

  it "returns correct 5 steps shifted sentence" do
    expect(caesar_cypher("What a string!", 5)).to eq("Bmfy f xywnsl!")
  end

  it "returns correct 5 steps shifted sentence, when capital letter in the middle" do
    expect(caesar_cypher("what A string!", 5)).to eq("bmfy F xywnsl!")
  end

  it "returns correct ouput with special characters" do
    expect(caesar_cypher("wh%a?t A s<t>ring!", 5)).to eq("bm%f?y F x<y>wnsl!")
  end

  it "returns blank text" do
    expect(caesar_cypher("   ", 1)).to eq("   ")
  end

  it "returns unshifted text" do
    expect(caesar_cypher("z")).to eq("z")
  end

  it "returns 0 characters text correct" do
    expect(caesar_cypher("", 1)).to eq("")
  end

  it "returns text with no characters and no shift" do
    expect(caesar_cypher).to eq("")
  end
end
