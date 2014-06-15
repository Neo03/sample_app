Feature: Signing in

Scenario: Unsuccessful sigin
	Given a user visits the signin page
	When they submit invalid signin information
	Then they should see an error message

Scenario: Successful signin
	Given a user visits the signin page
	And the user has account
	When the user submits valid signin information
	Then they should see their profile page
	Then they should see a signout link