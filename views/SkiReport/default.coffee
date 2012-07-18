div class:"ski_report", ->
	div class:"ski_title", ->
		span class:"title", ->
			text "SKI REPORT"
	span class:"change_resort", style:"display: block;", ->
		a id:"sr_change_resort", ->
			text 'Change Resort(s)'

	div id:"sr_choose_prov", ->
		span ->
			text "Province  "
		select id:"sr_dd_province", class:"box", name:"sr_dd_province", ->
			option value:"", ->
				"Please choose..."
			option value:"AB", ->
				"Alberta"
			option value:"BC", ->
				"British Columbia"
			option value:"MB", ->
				"Manitoba"
			option value:"NB", ->
				"New Brunswick"
			option value:"NL", ->
				"Newfoundland and Labrador"
			option value:"NS", ->
				"Nova Scotia"
			option value:"ON", ->
				"Ontario"
			option value:"PE", ->
				"Prince Edward Island"
			option value:"QC", ->
				"Quebec"
			option value:"SK", ->
				"Saskatchewan"
			option value:"YT", ->
				"Yukon Territory"
	div id:"hidden_div", style:"display: none;", ->
		text json_data = JSON.stringify(@skireport2)
		
		
	div id:"sr_choose_resorts", ->
		try
			ul class:"resort_list", ->
				for result in @skireport2["SITE"]
					li class:result['@']['PROV'], ->
						a class:"js_select", ->
							input id:"sr_chk_resorts", type:"checkbox", name:"sr_chk_resorts", value:result['@']['LOCATIONID'], ->
							result['@']['NAME_EN']
		catch err
			console.log err
		input type:"button", id:"btndetails", value:"Show Details"
		input type:"button", id:"btnback", value:"Go Back"
			
	div id:"sr_results", ->


	div class:"province", ->


	div class:"weathernetwork", ->
		span ->
			a href:"http://www.theweathernetwork.com/", ->
			img alt:"", src:"http://www.canada.com/travel/ideas/sun-and-sand/images/the_weather_network.JPG"
		span class:"more", ->
			text 'More from The Weather Network'
		table style:"float:left;", width:"210", border:"0", ->
			tr ->
				td ->
					a href:"http://www.theweathernetwork.com/alerts/", ->
						span ->
							text 'Warnings'
				td ->
					a href:"http://www.theweathernetwork.com/flu", ->
						span ->
							text 'Flu report'
			tr ->
				td ->
					a href:"http://www.theweathernetwork.com/weathermaps/", ->
						span ->
							text 'Maps'
				td ->
					a href:"http://www.theweathernetwork.com/mobile/", ->
						span ->
							text 'Mobile weather'
				
			tr ->
				td ->
					a href:"http://www.theweathernetwork.com/hwycond/cancities_hwy_en", ->
						span ->
							text 'Road conditions'
				td ->
					a href:"http://www.theweathernetwork.com/weather_cams", ->
						span ->
							text 'Weather cams'
				
			tr ->
				td ->
					a href:"http://postphoenix.theweathernetwork.com/features/flighttracker/", ->
						span ->
							text 'Flight tracker'
				
					
				
		span class:"copyright", ->
			