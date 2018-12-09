
Given("I am on the registration page") do
  registration_page.visit_registration_page
end

Given("I enter all details correctly") do
  registration_page.enter_firstName
  registration_page.enter_lastName
  registration_page.enter_valid_age
  registration_page.enter_valid_date_of_birth
  registration_page.click_male
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
