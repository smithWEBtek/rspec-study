require 'car'

describe 'Car' do
  describe '.colors' do
    it "returns an array of colors" do
      expect(Car.colors).to eq(["blue", 'black', "red", "green"])
    end
  end

  describe 'attributes' do
    it 'has 4 wheels by default' do
      expect(Car.new.wheels).to eq(4)
    end

    it 'sets and gets a value for make' do
      car = Car.new(make: 'Promaster')
      expect(car.make).to eq('Promaster')
    end
  end

  describe '.colors' do
    it 'returns an array of colors' do 
      expect(Car.colors).to eq(['blue', 'black', 'red', 'green'])
    end
  end

  describe '#full_name' do
    it 'returns a formatted string describing an instance of a Car' do
      car = Car.new
      expect(car.full_name).to eq("2007 Volvo (unknown)")
    end
  end

end
