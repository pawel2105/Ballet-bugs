Feature: view
	In order to see the information about a specific ballet event
	As a user
	I want to view a ballet event
		
		Scenario: Ballet event exists
			Given there is at least one ballet event listing
			And I am a user on the site
			When I am on a ballet event's page
			Then I should see a the name of the ballet event
			And I should see a photo that is associated with the event
			And I should see directions to that event
			And I should see a description of the event