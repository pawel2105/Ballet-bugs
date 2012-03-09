Feature: create
	In order to ballet events listed on the website
	As an admin
	I want to create a ballet listing
	
		Scenario: create a listing
			Given I am signed in as an admin
			And I am on the create ballet listing page
			When I create a ballet event
			And I save the ballet event
			Then I should be redirected to the listing index page
			And the ballet event should be created
			And the ballet event count is not zero