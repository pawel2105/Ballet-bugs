Feature: contact
	In order to see know how to contact the site owner
	As a user
	I want to view the contact page
	
		Scenario: User on the site
			Given I am a user on the site
			When I access the contact information page
			Then I should see some contact information
			And I should see the about information
			And I should see a picture of the ballet instructor
			And I should see some directions to the studio