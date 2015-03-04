Feature: Manage Powers
  In order to manage my Powers
  As a registered User
  I can create, delete and modify my Powers

  Background:
    Given I'm logged in
    And I have some Powers

  Scenario: List my powers
  	When I go to My Powers page
  	Then I should see my Powers list

  Scenario: Edit my Power
  	When I go to edit one of my Powers
  	And I change the title to "Random Item"    
  	Then I should see the title changed on the Power page

  Scenario: Add new Power
  	When I got to add new Power Page
  	And I fill the form and press submit button
  	# Need to change the text
  	Then I should see the text "New Power Added"

  Scenario: Delete Power
	When I press delete button on one of my Powers	
	Then I should see the message 'Power was successfully deleted'