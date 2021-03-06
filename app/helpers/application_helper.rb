module ApplicationHelper

	def banks
		[
			"American Express",
			"Bank of America",
			"Capital One 360",
			"Charles Schwab",
			"Chase",
			"Citi",
			"Fidelity",
			"US Bank",
			"USAA",
			"Wells Fargo",
			"Other?"
		]
	end
	
	def nonprofit_types
		[
			['Arts, Culture & Humanities', 1],
			['Education', 2],
			['Environment and Animals', 3],
			['Health', 4],
			['Human Services', 5],
			['International, Foreign Affairs', 6],
			['Public, Societal Benefit', 7],
			['Religion Related', 8],
			['Mutual/Membership Benefit', 9],
			['Unclassified', 10]
		]
	end

	def us_states
	  [
	    ['AK', 'AK'],
	    ['AL', 'AL'],
	    ['AR', 'AR'],
	    ['AZ', 'AZ'],
	    ['CA', 'CA'],
	    ['CO', 'CO'],
	    ['CT', 'CT'],
	    ['DC', 'DC'],
	    ['DE', 'DE'],
	    ['FL', 'FL'],
	    ['GA', 'GA'],
	    ['HI', 'HI'],
	    ['IA', 'IA'],
	    ['ID', 'ID'],
	    ['IL', 'IL'],
	    ['IN', 'IN'],
	    ['KS', 'KS'],
	    ['KY', 'KY'],
	    ['LA', 'LA'],
	    ['MA', 'MA'],
	    ['MD', 'MD'],
	    ['ME', 'ME'],
	    ['MI', 'MI'],
	    ['MN', 'MN'],
	    ['MO', 'MO'],
	    ['MS', 'MS'],
	    ['MT', 'MT'],
	    ['NC', 'NC'],
	    ['ND', 'ND'],
	    ['NE', 'NE'],
	    ['NH', 'NH'],
	    ['NJ', 'NJ'],
	    ['NM', 'NM'],
	    ['NV', 'NV'],
	    ['NY', 'NY'],
	    ['OH', 'OH'],
	    ['OK', 'OK'],
	    ['OR', 'OR'],
	    ['PA', 'PA'],
	    ['RI', 'RI'],
	    ['SC', 'SC'],
	    ['SD', 'SD'],
	    ['TN', 'TN'],
	    ['TX', 'TX'],
	    ['UT', 'UT'],
	    ['VA', 'VA'],
	    ['VT', 'VT'],
	    ['WA', 'WA'],
	    ['WI', 'WI'],
	    ['WV', 'WV'],
	    ['WY', 'WY']
	  ]
	end

end
