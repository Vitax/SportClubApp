# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

clubInMap = nil
file = File.read('./app/assets/javascripts/Data.json')
data_hash = JSON.parse(file)

data = data_hash['clubdata']
data.each do |whole|
	whole.each do |club, value| 
			clubInMap = whole.keys
	end

	club = Sportclub.create( 	address: whole[clubInMap[5].to_s], 
								postcode: whole[clubInMap[1].to_s], 
								clubname: whole[clubInMap[7].to_s],
								position: whole[clubInMap[3].to_i], 
								mailaddress: whole[clubInMap[4].to_s], 
								webpage: whole[clubInMap[6].to_s], 
								phonenumber: whole[clubInMap[0].to_s] )
end