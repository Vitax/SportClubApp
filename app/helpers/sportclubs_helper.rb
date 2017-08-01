require 'json'

module SportclubsHelper
	clubInMap = nil
	file = File.read('/home/caglar/Code/RubyOnRails/SportClubApp/app/assets/javascripts/Data.json')
	data_hash = JSON.parse(file)

	data = data_hash['clubdata']
	data.each do |whole|
		whole.each do |club, value| 
				clubInMap = whole.keys
				#print value
		end

		print whole[clubInMap[1]] << "\n"


		#print "address: " 		<< whole[clubInMap[5].to_s] << " "
		#print "postcode: " 		<< whole[clubInMap[1].to_s] << " "
		#print "clubname: " 		<< whole[clubInMap[7].to_s] << " "
		#print "position: " 		<< whole[clubInMap[3].to_i] << " "
		#print "mailaddress: " 	<< whole[clubInMap[4].to_s] << " "
		#print "webpage: " 		<< whole[clubInMap[6].to_s] << " "
		#print "phonenumber: " 	<< whole[clubInMap[0].to_i] << " "
	end
end
