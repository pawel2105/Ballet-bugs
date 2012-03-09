Feature: delete
	In order to remove an old ballet from the website
	As an admin
	I want to remove a ballet event
	
		Scenario: delete a single of many listings
			Given I am signed in as an admin
			And I am in the admin dashboard
			And I am on the ballet listing index
			When I delete a ballet event
			Then I should be redirected to the listing index page
			And the ballet event should be removed
			And the ballet event count is not zero
			
		Scenario: delete the only listing
			Given I am signed in as an admin
			And I am in the admin dashboard
			And I am on the ballet listing index
			When I delete the ballet event
			Then I should be redirected to the listing index page
			And the ballet event should be removed
			And the ballet event count is zero
			And I should see a message saying there are no ballet events