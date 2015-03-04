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
    When I click on update Power
  	Then I should see the title changed on the Power page