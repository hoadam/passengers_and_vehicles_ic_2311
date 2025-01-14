require 'spec_helper'

RSpec.describe Vehicle do
  let(:vehicle) {Vehicle.new("2001", "Honda", "Civic")}
  let(:taylor) {Passenger.new({"name"=>"Taylor", "age"=>12})}
  let(:charlie) { Passenger.new({"name"=>"Charlie", "age"=>18})}
  let(:jude) { Passenger.new({"name"=>"Jude", "age"=>20})}

  describe "#initialize" do
    it "can initialize" do
      expect(vehicle).to be_a (Vehicle)
      expect(vehicle.year).to eq ("2001")
      expect(vehicle.make).to eq ("Honda")
      expect(vehicle.model).to eq ("Civic")
      expect(vehicle.passengers).to eq ([])
    end
  end

  describe "#speeding?" do
    it "return false by default" do
      expect(vehicle.speeding).to eq (false)
    end
  end

  describe "#speed" do
    it "change speeding to true" do
      vehicle.speed

      expect(vehicle.speeding).to eq (true)
    end
  end

  describe "#add_passenger" do
    it "add a passenger to the vehicle" do
      vehicle.add_passenger(charlie)
      vehicle.add_passenger(jude)
      vehicle.add_passenger(taylor)

      expect(vehicle.passengers).to eq ([charlie, jude, taylor])
    end
  end

  describe "#num_adults" do
    it "return the number of adults in the vehicle" do
      vehicle.add_passenger(charlie)
      vehicle.add_passenger(jude)
      vehicle.add_passenger(taylor)

      expect(vehicle.num_adults).to eq (2)
    end
  end
end
