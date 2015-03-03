Feature: Manage Powers
  In order to manage my Powers
  As a registered User
  I want to create, delete and modify my Powers

  Scenario: List my powers
  	Given I'm logged in
  	When I go to My Powers page
  	Then I should see my Powers list

  Scenario: Edit my Power
  	Given I'm logged in
  	And I'm on my Power edit Page
  	When I change the title to "Random Item"
  	Then I should see the Title changed on Item Page