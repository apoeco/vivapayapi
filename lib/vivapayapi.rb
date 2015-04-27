require "vivapayapi/version"
require 'httparty'

module Vivapayapi
	class Transaction
		include HTTParty
		base_uri "demo.vivapayments.com/api/"

		def initialize(username, password)
			@auth = {:username => username , :password => password }
		end

		def capture(token)
			self.class.post("/transactions", 
	        :basic_auth => @auth,
			:body => {
	        :PaymentToken => token}.to_json,
	        :headers => { 'Content-Type' => 'application/json' },
	        :debug_output => $stdout)
		end
	end
end
