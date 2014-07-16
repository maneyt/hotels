require "csv"
require "./hotel"

class HotelQuery
  def initialize(filename)
    @filename = filename
    @hotels = []
  end

  def run
    read_file
    property = query_user
    puts find_hotel(property)
  end

  private

  attr_reader :hotels

  def find_hotel(property)
    hotels.select { |hotel| hotel.name.strip == property }
  end

  def query_user
    print "which property? > "
    property = gets.chomp
  end

  def read_file
    CSV.foreach(@filename, headers: true) do |row|
      @hotels << Hotel.new(row)
    end
  end
end

query = HotelQuery.new("hotels.csv")
query.run
