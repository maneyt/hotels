class CleanHotelRow
  def name(name)
    name.strip
  end

  def city(city)
    city.strip
  end

  def phone(phone)
    phone.delete! "(" ")"
    phone.gsub!(".","-")
    if phone.length != 12
      phone.insert(3,"-")
      phone.insert(7,"-")
    end
    phone
  end
end
