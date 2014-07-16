class Hotel
  def initialize(hotel_data)
    @hotel_data = hotel_data
  end

  attr_reader :hotel_data
  def name
    hotel_data.fetch("Hotel")
  end

  def city
    hotel_data.fetch("City")
  end

  def phone
    hotel_data.fetch("Phone Number")
  end

  def rooms
    hotel_data.fetch("Number of Singles") + hotel_data.fetch("Number of Doubles")
  end

  def to_s
    @hotel_data.each do |key,value|
      puts "#{key}: #{value}"
    end
  end
end
