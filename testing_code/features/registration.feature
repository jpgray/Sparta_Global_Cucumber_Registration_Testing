Feature: Sparta Global Registration Form
#Enter Scenarios here:

# Have 1st given as "I enter all details correctly" ?

  Scenario: Submitting without a first name
    Given I am on the registration page
    And I enter all details correctly
    And I clear the first name field
    When I submit the form
    Then I receive an error message prompt to enter a first name
    And I remain on the same page

  Scenario: Submitting without a last name
    Given I am on the registration page
    And I enter all details correctly
    And I clear the last name field
    When I submit the form
    Then I receive an error message prompt to enter a last name
    And I remain on the same page

  Scenario: Submitting without an age
    Given I am on the registration page
    And I enter all details correctly
    And I clear the age field
    When I submit the form
    Then I receive an error message prompt to enter an age
    And I remain on the same page

  Scenario: Submitting an invalid age
    Given I am on the registration page
    And I enter all details correctly
    And I clear the age field
    And I enter characters that are not numbers as an age
    When I submit the form
    Then I receive an error message prompt to enter an age
    And the age field remains empty
    And I remain on the same page

  Scenario: Submitting without a date of birth
    Given I am on the registration page
    And I enter all details correctly
    And I clear the date of birth field
    When I submit the form
    Then I remain on the same page

  Scenario: Submitting a valid date of birth using keys
    Given I am on the registration page
    And I enter a valid date of birth
    When I submit the form
    Then the correct date is displayed

  Scenario: Submitting without a gender
    Given I am on the registration page
    And I enter all details correctly other than choosing a gender
    When I submit the form
    Then the options are coloured red
    And I remain on the same page

