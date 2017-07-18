address_hash = {
  "subpremise" => "Apt 6",
  "house_number" => "22",
  "house_name" => nil,
  "street_line_1" => "Bailey Rd",
  "street_line_2" => nil,
  "town_or_city" => "Sale",
  "region" => "Greater Manchester",
  "postcode" => "M33 1AX"
}

def address_parser(addr)
  str_address = ""

  # Address line 1
  if !addr["subpremise"].nil?
    str_address += "#{addr["subpremise"]}, "
  end

  if !addr["house_name"].nil?
    str_address += "#{addr["house_name"]},"
  end

  str_address += "\n"

  # Address line 2
  if !addr["house_number"].nil?
    str_address += "#{addr["house_number"]} "
  end

  str_address += "#{addr["street_line_1"]},\n"

  # Address line 3
  if !addr["street_line_2"].nil?
    str_address += "#{addr["street_line_2"]},\n"
  end

  # Address line 4
  str_address += "#{addr["town_or_city"]},\n"

  # Address line 5
  if !addr["region"].nil?
    str_address += "#{addr["region"]},\n"
  end

  # Address line 6
  str_address += "#{addr["postcode"]}\n"

  puts str_address
end

address_parser(address_hash)
