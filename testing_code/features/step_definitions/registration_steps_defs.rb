Given("I am on the registration page") do
  registration_page.visit_registration_page
end

Given("I enter characters that are not numbers as an age") do
  registration_page.enter_invalid_age
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
