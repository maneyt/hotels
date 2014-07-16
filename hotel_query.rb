require "csv"
require "./hotel"

class HotelQuery
  def initialize(filename)
    @filename = filename
    @hotels = []
  end

  def run
    read_file
    property = user_query
    find_hotel(property)
  end

  private

  attr_accessor :hotels

  def find_hotel(property)
    puts hotels.select { |hotel| hotel.name.strip == property }
  end

  def user_query
    print "which property? > "
    gets.chomp
  end

  def read_file
    CSV.foreach(@filename, headers: true) do |row|
      hotels << Hotel.new(row)
    end
  end
end

query = HotelQuery.new("hotels.csv")
query.run
