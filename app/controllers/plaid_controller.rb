class PlaidController < ApplicationController	
	require 'open-uri'
	def index

	end

	def get_transactions
		user = Plaid.add_user "connect", "plaid_test", "plaid_good", "wells"
		transactions = user.transactions
	end

	def search_nonprofits
		search_string = URI.encode ("https://projects.propublica.org/nonprofits/api/v1/search.json?q=" + params[:q])
		puts search_string
		response = open(search_string).read
		render json: response
		#respond_with response
	end

end
