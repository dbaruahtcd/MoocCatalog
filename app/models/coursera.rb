#require 'httparty'
#require 'pp'

class Coursera
	include HTTParty

	base_uri 'https://api.coursera.org/api/courses.v1'
	default_params fields: "photoUrl,name,workload,description", q: "search"
	format :json

	def self.for term
		get("", query: { query: term}, :verify => false)["elements"] # had to set verify : false to run
	end
end

#pp Coursera.for "python"
#pp Coursera.for "public speaking"