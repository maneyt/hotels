class Hotel
  def initialize(hotel_data)
    @hotel_data = hotel_data
    @data_cleaner= CleanHotelRow.new
  end

  attr_reader :hotel_data, :data_cleaner

  def name
    data_cleaner.name( hotel_data.fetch("Hotel") )
  end

  def city
    data_cleaner.city( hotel_data.fetch("City") )
  end

  def phone
    data_cleaner.phone( hotel_data.fetch("Phone Number") )
  end

  def rooms
    hotel_data.fetch("Number of Singles").delete(",").to_i + hotel_data.fetch("Number of Doubles").to_i
  end

  def display
    puts name
    puts "Location: #{city}"
    puts "Phone: #{phone}"
    puts "Rooms: #{rooms}"
  end
end
