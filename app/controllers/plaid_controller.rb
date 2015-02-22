class PlaidController < ApplicationController	
	require 'open-uri'
	require 'json'
	
	def index
		@hide_header = true
	end

	def submit_signin
		redirect_to :choose_charity
	end

	def connect_bank
	end

	def submit_connect_bank
		redirect_to :choose_charity
	end

	def verify_charity
	end
	
	def choose_charity
	end

	def submit_choose_charity
		redirect_to :thanks
	end

	def transaction_list
  		@user = Plaid.add_user("connect", "plaid_test", "plaid_good", "wells")
  		@transactions = []
  		@current_roundups = 0
		@user.transactions.each do |t|
			amount = t[2]
			change = amount.ceil - amount
			if (amount > 0)
				@transactions.push ({
					amount: amount,
					name: t[3],
					change: change
				})
				@current_roundups = @current_roundups + change
			end
		end
		# donation inflation ftw
		@roundups_to_date = @current_roundups + 15
	end

	def thanks
	end

	def get_transactions
		user = Plaid.add_user "connect", "plaid_test", "plaid_good", "wells"
		transactions = user.transactions
	end

	def search_nonprofits
		query = "https://projects.propublica.org/nonprofits/api/v1/search.json?"
		if !params[:category].blank?
			query = query + "ntee[id]=" + params[:category] + "&"
		end
		if params[:q] != ""
			query = query + "q=" + params[:q] + "&"
 		end
 		if params[:state].blank?
 			state = "NE"
 		else
 			state = params[:state]
 		end

		begin
			search_string = URI.encode(query + "state[id]=" + state)
			puts search_string
			response = open(search_string).read
		rescue
			no_response = true
		end
		
		result = JSON.parse(response)
		@names = []
		unless no_response
			filings = result["filings"]
			filings.each do | f |
				@names.push(f['organization']['name'].titleize)
			end
		end

		if params.count == 3   # only q as parameter, send back json for typeahead
			render json: @names	
		else
			render :display_search_results
		end

	end


end
