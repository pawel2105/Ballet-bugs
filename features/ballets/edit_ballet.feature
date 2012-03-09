Feature: edit
	In order to change information about certain ballet events
	As an admin
	I want to edit a ballet listing
				
		Scenario: Signed in as admin
			Given I am signed in as an admin
			And I am in the admin dashboard
			And I am on the edit ballet listing page
			When I edit a ballet event
			And I save the ballet event
			Then I should be redirected to the ballet event page
			And the ballet event should be edited