class PlaidController < ApplicationController	
	require 'open-uri'
	require 'json'
	def index

	end

	def connect_bank

	end

	def choose_charity

	end

	def transaction_list

	end

	def thanks

	end

	def get_transactions
		user = Plaid.add_user "connect", "plaid_test", "plaid_good", "wells"
		transactions = user.transactions
	end

	def search_nonprofits
		begin
		search_string = URI.encode ("https://projects.propublica.org/nonprofits/api/v1/search.json?q=" + params[:q])
		puts search_string
		response = open(search_string).read
		rescue
			response = "{filings: []}"
		end
		render json: response
	end


end
