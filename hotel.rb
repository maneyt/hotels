class Hotel
  def initialize(hotel_data)
    @hotel_data = hotel_data
  end

  attr_reader :hotel_data

  def name
    hotel_data.name
  end

  def city
    hotel_data.city
  end

  def phone
    hotel_data.phone
  end

  def rooms
    hotel_data.rooms
  end

  def display
    puts name
    puts "Location: #{city}"
    puts "Phone: #{phone}"
    puts "Rooms: #{rooms}"
  end
end
