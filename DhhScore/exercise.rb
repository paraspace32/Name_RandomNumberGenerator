require_relative "lib/library"
require_relative 'modules/scores'
require_relative 'modules/parser'

class Score
	def self.calculatation(url)
		dhh_score = 0
		type_values = LookUp.event_scores
		parsed_data = UrlParser.parsed_json(url)

		parsed_data.each do |k|
			if type_values.has_key? k["type"].to_sym
		    	dhh_score += type_values[k["type"].to_sym]
		    else
		    	dhh_score += 1
			end
		end

		dhh_score
	end
end

begin
	score = Score.calculatation('https://api.github.com/users/dhh/events/public')
	puts "#{score}"
rescue Exception => e
	puts "#{e}"
end