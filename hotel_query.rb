require "csv"

class HotelQuery
  def initialize(filename)
    @filename = filename
    @hotels = []
  end

  def run
    read_file

  end

  def read_file
    CSV.foreach(@filename, headers: true) do |row|
      puts row["Hotel"]
    end 
  end
end

query = HotelQuery.new("hotels.csv")
query.run
