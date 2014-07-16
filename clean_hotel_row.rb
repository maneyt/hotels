class CleanHotelRow
  def initialize(hotel_data)
    @hotel_data = hotel_data
  end

  attr_accessor :hotel_data

  def clean
   hotel_data["Hotel"] = clean_name(hotel_data["Hotel"])
   hotel_data["City"] = clean_city(hotel_data["City"])
   hotel_data["Phone Number"] = clean_phone(hotel_data["Phone Number"])
   hotel_data
  end

  private

  def clean_name(name)
    name.strip
  end

  def clean_city(city)
    city.strip
  end

  def clean_phone(phone)
    phone.delete! "(" ")"
    phone.gsub!(".","-")
    if phone.length != 12
      phone.insert(3,"-")
      phone.insert(7,"-")
    end
    phone
  end
end
