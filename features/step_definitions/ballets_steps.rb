def create_visitor
  @visitor ||= { :name => "Gandalf Grey", :email => "example@example.com",
      :password => "password", :password_confirmation => "password" }
end

def sign_in
  visit '/admins/sign_in'
  fill_in "Email", :with => @visitor[:email]
  fill_in "Password", :with => @visitor[:password]
  click_button "Sign in"
end

def create_admin
  create_visitor
  delete_admin
  @admin = FactoryGirl.create(:admin, email: @visitor[:email])
end

################################################################################

Given /^I do not exist as an admin$/ do
  create_visitor
end

When /^I try to sign in$/ do
  create_visitor
  sign_in
end

Then /^I should see an error message$/ do
  pending # express the regexp above with the code you wish you had
end

Then /^I should be signed out$/ do
  pending # express the regexp above with the code you wish you had
end

Given /^I exist as an admin$/ do
  pending # express the regexp above with the code you wish you had
end

Given /^I am not logged in$/ do
  pending # express the regexp above with the code you wish you had
end

When /^I enter the wrong email password$/ do
  pending # express the regexp above with the code you wish you had
end

When /^I enter the wrong email address$/ do
  @visitor = @visitor.merge(:email => "wrong@example.com")
end

Given /^I am not signed in$/ do
  pending # express the regexp above with the code you wish you had
end

When /^I sign in with valid credentials$/ do
  pending # express the regexp above with the code you wish you had
end

Then /^I should be redirected to the site$/ do
  pending # express the regexp above with the code you wish you had
end

Then /^I should be logged in$/ do
  pending # express the regexp above with the code you wish you had
end

Given /^I am signed in as an admin$/ do
  create_admin
end

Given /^I am on the create ballet listing page$/ do
  visit '/admins/ballet/new'
end

When /^I create a ballet event$/ do
  pending # express the regexp above with the code you wish you had
end

When /^I save the ballet event$/ do
  pending # express the regexp above with the code you wish you had
end

Then /^I should be redirected to the listing index page$/ do
  pending # express the regexp above with the code you wish you had
end

Then /^the ballet event should be created$/ do
  pending # express the regexp above with the code you wish you had
end

Then /^the ballet event count is not zero$/ do
  pending # express the regexp above with the code you wish you had
end

Given /^I am on the ballet listing index$/ do
  pending # express the regexp above with the code you wish you had
end

When /^I delete a ballet event$/ do
  pending # express the regexp above with the code you wish you had
end

Then /^the ballet event should be removed$/ do
  pending # express the regexp above with the code you wish you had
end

When /^I delete the ballet event$/ do
  pending # express the regexp above with the code you wish you had
end

Then /^the ballet event count is zero$/ do
  pending # express the regexp above with the code you wish you had
end

Then /^I should see a message saying there are no ballet events$/ do
  pending # express the regexp above with the code you wish you had
end

Given /^I am on the edit ballet listing page$/ do
  pending # express the regexp above with the code you wish you had
end

When /^I edit a ballet event$/ do
  pending # express the regexp above with the code you wish you had
end

Then /^I should be redirected to the ballet event page$/ do
  pending # express the regexp above with the code you wish you had
end

Then /^the ballet event should be edited$/ do
  pending # express the regexp above with the code you wish you had
end

Given /^there is at least one ballet event listing$/ do
  pending # express the regexp above with the code you wish you had
end

Given /^I am a user on the site$/ do
  pending # express the regexp above with the code you wish you had
end

When /^I am on a ballet event's page$/ do
  pending # express the regexp above with the code you wish you had
end

Then /^I should see a the name of the ballet event$/ do
  pending # express the regexp above with the code you wish you had
end

Then /^I should see a photo that is associated with the event$/ do
  pending # express the regexp above with the code you wish you had
end

Then /^I should see directions to that event$/ do
  pending # express the regexp above with the code you wish you had
end

Then /^I should see a description of the event$/ do
  pending # express the regexp above with the code you wish you had
end

Given /^the site has no ballet events$/ do
  pending # express the regexp above with the code you wish you had
end

When /^I access the ballet listings page by clicking on the nav link$/ do
  pending # express the regexp above with the code you wish you had
end

Then /^I should see a message saying there are no ballets listed$/ do
  pending # express the regexp above with the code you wish you had
end

When /^I try to access the ballet listings page$/ do
  pending # express the regexp above with the code you wish you had
end

Then /^I should see a list of ballets$/ do
  pending # express the regexp above with the code you wish you had
end

When /^I access the contact information page$/ do
  pending # express the regexp above with the code you wish you had
end

Then /^I should see some contact information$/ do
  pending # express the regexp above with the code you wish you had
end

Then /^I should see the about information$/ do
  pending # express the regexp above with the code you wish you had
end

Then /^I should see a picture of the ballet instructor$/ do
  pending # express the regexp above with the code you wish you had
end

Then /^I should see some directions to the studio$/ do
  pending # express the regexp above with the code you wish you had
end
