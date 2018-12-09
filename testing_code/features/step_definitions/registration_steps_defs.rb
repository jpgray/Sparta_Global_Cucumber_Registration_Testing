Given("I land on the registration page") do
  registration_page.visit_registration_page
end

When("I enter correct personal information") do
end

When("I enter correct degree information") do
  registration_page.input_degree_field(@degree)
  registration_page.select_university_from_dropdown(@uni)
end

When("I enter a correct address") do
  pending # Write code here that turns the phrase above into concrete actions
end

When("I enter a correct email") do
  pending # Write code here that turns the phrase above into concrete actions
end

When("I enter correct contact details") do
  pending # Write code here that turns the phrase above into concrete actions
end

When("I upload my CV") do
  pending # Write code here that turns the phrase above into concrete actions
end

When("I agree to the terms") do
  pending # Write code here that turns the phrase above into concrete actions
end

When("I select a stream") do
  pending # Write code here that turns the phrase above into concrete actions
end

When("I rate the form") do
  pending # Write code here that turns the phrase above into concrete actions
end

When("I click the register button") do
  pending # Write code here that turns the phrase above into concrete actions
end

Then("I should receive confirmation that my account was registered") do
  pending # Write code here that turns the phrase above into concrete actions
end
