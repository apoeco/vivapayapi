require "vivapayapi/version"
require 'httparty'

module VivaPayAPI
	class Transaction
		include HTTParty
		base_uri "https://demo.vivapayments.com/api/"

		def initialize(username, password)
			@auth = {:username => username , :password => password }
		end

		def capture(token)
			@response = self.class.post("/transactions", 
	        :basic_auth => @auth,
			:body => {
	        :PaymentToken => token}.to_json,
	        :headers => { 'Content-Type' => 'application/json' },
	        :debug_output => $stdout).parsed_response
	        return @response
		end

		def transaction_id
			unless @response.nil?
				return @response["TransactionId"]
			end
			return nil
		end

		def status
			unless @response.nil?
				return @response["StatusId"]
			end
			return nil
		end

		def amount
			unless @response.nil?
				@response["Amount"]
			end
			return nil
		end

		def error_text
			unless @response.nil?
				return @response["ErrorText"]
			end
			return nil
		end

		def error_code
			unless @response.nil?
				return @response["ErrorCode"]
			end
			return nil
		end

		def response
			@response
		end

		def succesfull?
			unless @response.nil?
				return @response["ErrorCode"]==0
			end
			return nil
		end
	end
end
