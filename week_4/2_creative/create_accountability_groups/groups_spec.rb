require_relative "my_solution"

describe 'group_maker' do
  let(:array_1) { ["Adrian Tawadros", "Alan Jameson", "Andrew Adams", "Angela Kosek", "Darrell Jones", "Francisco Scala", "Isaac Keith", 
    "Ismail Kalimi", "James Miller", "James Walker", "Jeremy Wong", "Jonathan Young", "Joseph Webb", "Maddison Brusman", "Marek Pyczkowski", 
    "Max Diener"] }
  let(:array_2) { ["Adrian Tawadros", "Alan Jameson", "Andrew Adams", "Angela Kosek", "Darrell Jones", "Francisco Scala", "Isaac Keith", 
    "Ismail Kalimi", "James Miller", "James Walker", "Jeremy Wong", "Jonathan Young", "Joseph Webb", "Maddison Brusman", "Marek Pyczkowski", 
    "Max Diener", "Praniti Sinha"] }
  let(:array_3) { ["Adrian Tawadros", "Alan Jameson", "Andrew Adams", "Angela Kosek", "Darrell Jones", "Francisco Scala", "Isaac Keith", 
    "Ismail Kalimi", "James Miller", "James Walker", "Jeremy Wong", "Jonathan Young", "Joseph Webb", "Maddison Brusman", "Marek Pyczkowski", 
    "Max Diener", "Praniti Sinha", "Quy Tran"] }
  let(:array_4) { ["Adrian Tawadros", "Alan Jameson", "Andrew Adams", "Angela Kosek", "Darrell Jones", "Francisco Scala", "Isaac Keith", 
    "Ismail Kalimi", "James Miller", "James Walker", "Jeremy Wong", "Jonathan Young", "Joseph Webb", "Maddison Brusman", "Marek Pyczkowski", 
    "Max Diener", "Praniti Sinha", "Quy Tran", "Ravi Patel"] }

  it "is defined as a method" do
    defined?(group_maker).should eq 'method'
  end

  it "requires a single argument" do
    method(:group_maker).arity.should eq 1
  end

  it "returns groups of 4 if 'array.length/0' results in remainder 0" do
    total(array_1).should eq
  end

  it "returns groups of 4 and one of five if 'array.length/0' results in remainder 1" do
    total(array_2).should eq 
  end

  it "returns groups of 4 and two of five if 'array.length/0' results in remainder 2" do
    total(array_3).should eq 
  end

  it "returns groups of 4 and three of five if 'array.length/0' results in remainder 1" do
    total(array_4).should eq 
  end
end

