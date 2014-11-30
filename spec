
5. what if i made an apartment hunting app?

	models
		users
			username
			password
			my hunts

		hunts
			hunt name
			description
			apartments in your hunt
			users that have access to your hunt
				user ID
				status: invited, accepted, rejected or access revoked?
			? who's the admin? is there an admin?
		apartments (nested under hunts?)
			source link
			address
				v2: split that ish out
			beds
			baths
			price
			description
			V1.5: photos
			status:
				contacted
				seen
				applied
				rented [or something]
			opinions from users
			? ratings from users?
				or rank? or shortlist?

		contact
				name
				phone
				email
				apt_id

	views
		home/sign up
		sign in
		start a hunt/edit a hunt
			invite others to your hunt
		accept a hunt invite
		add an apartment to your hunt
			manually
			V2: automatically.....? through craislist post scraping?
		list all the apartments in your hunt
			display key details
			link to view/edit each apartment
			rank
			V3: sorting/filtering
		see the details of one apartment
			rate/comment/shortlist etc
			update status and other details, preferrably inline
			V1.5: upload pictures





	future considerations
		how much data can we import automatically from RentRent?
			none
		ability to add photos
		map view
			RentRent helps with this
		decider feature
		customize views OR ATTRIBUTES?
		search for apartments?
		feed of activity: did one of your future roommates just go through all the apartments you nicely catalogued and comment on all of them saying they hate them?
		list page sort and filters
		user preferences: molly will not live in an apartment that is less than 500 sq feet - do we warn you about this in lists etc?
		email integration?








purgatory
1. write an app that girl scout PARENTS (important) can use to share their location and attract potential girl scout cookie customers
	a. users with profiles
		share location feature
			must expire within X time period (1 hour?)
		verify age / non-minor status
	b. maps of users that have shared their location
	c. lists of users that have shared locations with Y distance of you

2. display foursquare checkins on a map over time
	within certain geographical parameters
	have a little time slider
	cons: not sure anonymous checkin information is publicly available: https://developer.foursquare.com/docs/checkins/checkins

3. recreate Cat Daily iPhone app:
	list of cat pictures
	like and share
	flickr api

4. steal dro's idea and make a "tindr for amazon products"










