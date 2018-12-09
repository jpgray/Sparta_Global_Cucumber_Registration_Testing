require 'capybara/dsl'

class RegistrationPage
  include Capybara::DSL

  attr_reader :registration_page_url, :first_name_error_message, :last_name_error_message, :age_error_message

  def initialize
    @registration_page_url = 'https://crispyjourney.herokuapp.com/'
    @first_name_id = 'firstName'
    @first_name_input = 'Cris P'
    @first_name_error_message = 'Please enter your first name.'
    @last_name_id = 'lastName'
    @last_name_input = 'Journey'
    @last_name_error_message = 'Please enter your last name.'
    @age_placeholder = 'Enter Age'
    @age_valid_input = '123'
    @age_invalid_input = 'hllo thr'
    @age_error_message = 'Please enter your age.'
  end


  def visit_registration_page
    visit(@registration_page_url)
  end

  def enter_firstName
    fill_in(@first_name_id, :with => @first_name_input)
  end

  def enter_lastName
    fill_in(@last_name_id, :with => @last_name_input)
  end

  def enter_valid_age
    fill_in(@age_placeholder, :with => @age_valid_input)
  end

  def enter_invalid_age
    fill_in(@age_placeholder, :with => @age_invalid_input)
  end

  def click_submit
    # click_button('Sign In')
    find("button[type='submit']").click
  end

  def get_current_url
    current_url
  end

  def get_age_field
    find("input[placeholder='#{@age_placeholder}']").text
  end

  def check_error_messages(expected_text)
    begin
      find('.invalid-feedback', text: expected_text)
    rescue
      return false
    else
      return true
    end
  end

end
