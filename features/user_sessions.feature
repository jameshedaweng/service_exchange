Feature: User Sessions
  In order to create my first power
  As a guest user 
  I need to sign up
  Then that I can log in
  And I can log out

  Scenario: Sign up
    Given I go to the sign up page
    Then I put in my email and password
    When I press sign up
    Then I should be notified that my account is created