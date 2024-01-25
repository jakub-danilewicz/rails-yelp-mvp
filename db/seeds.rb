# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end


puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."



restaurants_data = [
  { name: "Tuluslotte", address: "Bergmannstraße 22, 10961 Berlin", phone_number: "+49 30 1234567", category: "chinese"},
  { name: "BRŸGGERI Berlin", address: "Schönhauser Allee 36, 10435 Berlin", phone_number: "+49 30 2345678", category: "italian"},
  { name: "Kimchi Princess", address: "Skalitzer Str. 36, 10999 Berlin", phone_number: "+49 30 3456789", category: "japanese" },
  { name: "Yafo", address: "Gipsstr. 2, 10119 Berlin", phone_number: "+49 30 4567890", category: "french" },
  { name: "Nobelhart & Schmutzig", address: "Friedrichstraße 218, 10969 Berlin", phone_number: "+49 30 5678901", category: "belgian" },
  { name: "Bastard Berlin", address: "Reichenberger Str. 122, 10999 Berlin", phone_number: "+49 30 6789012", category: "japanese" },
  { name: "Lokal 6", address: "Gabriel-Max-Straße 6, 10245 Berlin", phone_number: "+49 30 7890123", category: "french" },
  { name: "Coda Dessert Dining", address: "Friedelstraße 47, 12047 Berlin", phone_number: "+49 30 8901234", category: "italian" },
  { name: "Prater Garten", address: "Kastanienallee 7-9, 10435 Berlin", phone_number: "+49 30 9012345", category: "chinese" }
]

restaurants_data.each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end

puts "Finished!"
