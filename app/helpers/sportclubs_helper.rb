require 'json'

module SportclubsHelper

	def clubs
		@clubs = Sportclub.all()
	end
	
	def jsonTests
		clubInMap = nil
			file = File.read('/home/caglar/Code/RubyOnRails/SportClubApp/app/assets/javascripts/Data.json')
			data_hash = JSON.parse(file)
	
			data = data_hash['clubdata']
			data.each do |whole|
				whole.each do |key, value| 
						clubInMap = whole.keys
				end
	
			print "address: " 		<< whole[clubInMap[5]] << " "
			print "postcode: " 		<< whole[clubInMap[1]] << " "
			print "clubname: " 		<< whole[clubInMap[7]] << " "
			#print "position: " 		<< whole[clubInMap[3]] << " "
			print "mailaddress: " 	<< whole[clubInMap[4]] << " "
			print "webpage: " 		<< whole[clubInMap[6]] << " "
			print "phonenumber: " 	<< whole[clubInMap[0]] << " \n"
		end
	end
end
