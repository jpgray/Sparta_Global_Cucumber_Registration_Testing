Feature: Sparta Global Registration Form

  Scenario: I should be able to register an account
  Given I land on the registration page
  When I enter correct personal information
  And I enter correct degree information
  And I enter a correct address
  And I enter a correct email
  And I enter correct contact details
  And I upload my CV
  And I agree to the terms
  And I select a stream
  And I rate the form
  And I click the register button
  Then I should receive confirmation that my account was registered
