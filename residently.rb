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

str_address = ""

# Address line 1
if !address_hash["subpremise"].nil?
  str_address += address_hash["subpremise"] + ", "
end

if !address_hash["house_name"].nil?
  str_address += address_hash["house_name"] + ","
end

str_address += "\n"

# Address line 2
if !address_hash["house_number"].nil?
  str_address += address_hash["house_number"] + " "
end

str_address += address_hash["street_line_1"] + "," + "\n"

# Address line 3
if !address_hash["street_line_2"].nil?
  str_address += address_hash["street_line_2"] + "," + "\n"
end

# Address line 4
str_address += address_hash["town_or_city"] + "," + "\n"

# Address line 5
if !address_hash["region"].nil?
  str_address += address_hash["region"] + "," + "\n"
end

# Address line 5
str_address += address_hash["postcode"] + "\n"



print str_address
