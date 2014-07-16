require "csv"
require "./hotel"
require "./null_hotel"

class HotelQuery
  def initialize(filename)
    @filename = filename
    @hotels = []
  end

  def run
    read_file
    property_name = query_user
    find_hotel(property_name).display
  end

  private

  attr_reader :hotels

  def find_hotel(property_name)
    hotels.find( -> { NullHotel.new }) { |hotel| hotel.name == property_name }
  end

  def query_user
    print "which property? > "
    gets.chomp
  end

  def read_file
    CSV.foreach(@filename, headers: true) do |row|
      @hotels << Hotel.new(row)
    end
  end
end

query = HotelQuery.new("hotels.csv")
query.run
