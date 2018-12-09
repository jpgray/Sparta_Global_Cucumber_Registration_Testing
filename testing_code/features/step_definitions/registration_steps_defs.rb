Given("I complete all mandotory sections on the Form") do
  registration_page.visit_homepage
  registration_page.input_email
  registration_page.input_skills
  registration_page.input_phone_number
  registration_page.select_Devops_Stream
  registration_page.select_SDET_Stream
  registration_page.input_linkedin
  registration_page.accept_terms_and_conditions
  registration_page.form_rating
end

When("I click the submit button") do
  registration_page.click_submit
end

Then("I am signed up to Sparta Global") do
  expect(registration_page.current_url).to eq 'https://crispyjourney.herokuapp.com/registration_complete?dob=1990-12-20&customRadioInline1=on&cv=&streamRadioInline1=on'
end
