Feature: Sparta Global Registration Form
#Enter Scenarios here:
# Have 1st given as "I enter all other details correctly" ?

  Scenario: Submitting without a first name
    Given I am on the registration page
    When I submit the form
    Then I receive an error message prompt to enter a first name
    And I remain on the same page

  Scenario: Submitting without a last name
    Given I am on the registration page
    When I submit the form
    Then I receive an error message prompt to enter a last name
    And I remain on the same page

  Scenario: Submitting without an age name
    Given I am on the registration page
    When I submit the form
    Then I receive an error message prompt to enter an age
    And I remain on the same page

  Scenario: Submitting without an age name
    Given I am on the registration page
    And I enter characters that are not numbers as an age
    When I submit the form
    Then I receive an error message prompt to enter an age
    And the age field remains empty
    And I remain on the same page
