Feature: sign in
	In order to have admin access
	As an admin
	I want to sign in
	
		Scenario: admin not registered
			Given I do not exist as an admin
			When I try to sign in
			Then I should see an error message
			And I should be signed out
		
		Scenario: admin adds wrong password
			Given I exist as an admin
			And I am not logged in
			When I enter the wrong email password
			Then I should see an error message
			And I should be signed out
					
		Scenario: admin adds wrong email
			Given I exist as an admin
			And I am not logged in
			When I enter the wrong email address
			Then I should see an error message
			And I should be signed out
			
		Scenario: admin signs in successfully
			Given I exist as an admin
			And I am not signed in
			When I sign in with valid credentials
			Then I should be redirected to the site
			And I should be logged in