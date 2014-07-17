class CleanHotelRow
  def initialize(hotel_data)
    @hotel_data = hotel_data
  end

  attr_reader :hotel_data

  def name
    hotel_data.fetch("Hotel").strip
  end

  def city
    hotel_data.fetch("City").strip
  end

  def phone
    clean_phone(hotel_data.fetch("Phone Number"))
  end

  def rooms
    hotel_data.fetch("Number of Singles").delete(",").to_i + hotel_data.fetch("Number of Doubles").to_i
  end

  private

  def clean_phone(phone)
    phone.delete! "(" ")" "."
    if phone.length != 12
      phone.insert(3, "-")
      phone.insert(7, "-")
    end
    phone
  end
end
