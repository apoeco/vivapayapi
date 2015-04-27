require "vivapayapi/version"
require 'httparty'

module Vivapayapi
	include HTTParty
	base_uri "https://demo.vivapayments.com/api/"

	def initialize(username, password)
		@auth = {:username => "329f4c1f-d0f7-43cf-ad77-c680297cf84a" , :password => "kv9kO?" }
	end

	def self.capture(token)
		post("/transactions", 
        :basic_auth => @auth,
		:body => {
        :PaymentToken => token}.to_json,
        :headers => { 'Content-Type' => 'application/json' },
        :debug_output => $stdout)
	end
end
