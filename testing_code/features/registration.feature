Feature: Sparta Global Registration Form
#Enter Scenarios here:
  Scenario: Completing and submitting the registration form will take you to the confimration screen

    Given I complete all mandotory sections on the Form
    When I click the submit button
    Then I am signed up to Sparta Global
