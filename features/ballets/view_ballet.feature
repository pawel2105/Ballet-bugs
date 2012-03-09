Feature: view
	In order to see information about a particular ballet event
	As a user
	I want to view a ballet listing
	
		Scenario: There are no ballets listed
			Given the site has no ballet events
			When I access the ballet listings page by clicking on the nav link
			Then I should see a message saying there are no ballets listed
		
		Scenario: Ballet listings exist
			Given there is at least one ballet event listing
			When I try to access the ballet listings page
			Then I should see a list of ballets