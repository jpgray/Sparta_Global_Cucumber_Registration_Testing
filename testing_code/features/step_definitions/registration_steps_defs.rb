
Given("I am on the registration page") do
  registration_page.visit_registration_page
end

Given("I enter all details correctly") do
  registration_page.enter_firstName
  registration_page.enter_lastName
  registration_page.enter_valid_age
  registration_page.enter_valid_date_of_birth
  registration_page.click_male
  registration_page.enter_degree_title
  registration_page.select_university_from_dropdown
  registration_page.enter_address_line_1
  registration_page.enter_city
  registration_page.select_county_from_dropdown
  registration_page.enter_postcode
  registration_page.input_email
  registration_page.input_skills
  registration_page.input_phone_number
  registration_page.input_linkedin
  registration_page.select_SDET_Stream
  registration_page.accept_terms_and_conditions
end

Given("I clear the first name field") do
  registration_page.clear_first_name
end

Given("I clear the last name field") do
  registration_page.clear_last_name
end

Given("I clear the age field") do
  registration_page.clear_age
end

Given("I clear the degree field") do
  registration_page.clear_degree_field
end

Given("I clear the date of birth field") do
  registration_page.clear_date_of_birth
end


Given("I enter characters that are not numbers as an age") do
  registration_page.enter_invalid_age
end

Given("I enter a valid date of birth") do
  registration_page.enter_valid_date_of_birth
end

Given("I enter all details correctly other than choosing a gender") do
  registration_page.enter_firstName
  registration_page.enter_lastName
  registration_page.enter_valid_age
  registration_page.enter_valid_date_of_birth
  registration_page.enter_degree_title
  registration_page.select_university_from_dropdown
  registration_page.enter_address_line_1
  registration_page.enter_city
  registration_page.select_county_from_dropdown
  registration_page.enter_postcode
  registration_page.input_email
  registration_page.input_skills
  registration_page.input_phone_number
  registration_page.input_linkedin
  registration_page.select_SDET_Stream
  registration_page.accept_terms_and_conditions
end

When("I submit the form") do
  registration_page.click_submit
end

Then("I receive an error message prompt to enter a first name") do
  expect(registration_page.check_error_messages(registration_page.first_name_error_message)).to be true
end

Then("I remain on the same page") do
  expect(registration_page.get_current_url).to eq registration_page.registration_page_url
end

Then("I receive an error message prompt to enter a last name") do
  expect(registration_page.check_error_messages(registration_page.last_name_error_message)).to be true
end

Then("I receive an error message prompt to enter an age") do
  expect(registration_page.check_error_messages(registration_page.age_error_message)).to be true
end

Then("the age field remains empty") do
  expect(registration_page.get_age_field).to eq ''
end

Then("the correct date is displayed") do
  expect(registration_page.get_date_of_birth_field).to eq "#{registration_page.date_of_birth_valid_input.year.to_s}-#{registration_page.date_of_birth_valid_input.month.to_s}-#{registration_page.date_of_birth_valid_input.day.to_s}"
end

Then("the options are coloured red") do
  expect(registration_page.check_css_color(registration_page.male_radio_label_indentifier)).to eq registration_page.fail_color_rgba
end

When("I enter correct degree information") do
  registration_page.input_degree_field(@degree)
  registration_page.select_university_from_dropdown(@uni)
end

Given("I clear the address line one field") do
  registration_page.clear_address_line_1
end

Given("I clear the city field") do
  registration_page.clear_city
end

Given("I clear the postcode field") do
  registration_page.clear_postcode
end

Then("I receive an error message prompt to enter an address") do
  expect(registration_page.check_error_messages(registration_page.address_error_message)).to be true
end

Then("I receive an error message prompt to enter a postcode") do
  expect(registration_page.check_error_messages(registration_page.postcode_error_message)).to be true
end

Then("I should receive confirmation that my account was registered") do
  expect(confirmation_page.check_confirmation_message).to eq confirmation_page.confirmation_message
end
