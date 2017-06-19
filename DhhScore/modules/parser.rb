module UrlParser
	extend self

	def parsed_json(url)
		request_url = url
		json_parse = JSON.parse(HTTParty.get(request_url).body)
	end
end

