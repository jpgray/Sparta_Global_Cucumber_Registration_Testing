require 'capybara/dsl'

class RegistrationPage
  include Capybara::DSL

  attr_reader :registration_page_url, :first_name_error_message, :last_name_error_message, :age_error_message, :date_of_birth_valid_input, :male_radio_label_indentifier, :fail_color_rgba, :degree, :uni

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
    @date_of_birth_name = 'dob'
    @date_of_birth_valid_input = Date.new(1066,10,14)
    @male_radio_id = 'customRadioInline1'
    @male_radio_label_indentifier = "label[for=#{@male_radio_id}]"
    @fail_color_rgba = 'rgba(220, 53, 69, 1)'
    @degree = 'Mechanical Engineering'
    @uni = 'University of Sheffield'
    @degree_placeholder = "Enter Degree"
    @address_line_1_id = "inputAddress"
    @valid_address_line_1 = "1 Castle Yard"
    @city_id = "inputCity"
    @city = "Richmond"
    @postcode_id = "inputPostcode"
    @postcode = "TW10 6TF"
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

  def enter_valid_date_of_birth
    fill_in(@date_of_birth_name, :with => "#{@date_of_birth_valid_input.day}#{@date_of_birth_valid_input.month}#{@date_of_birth_valid_input.year}")
  end

  def clear_first_name
    fill_in(@first_name_id, :with => "")
  end

  def clear_last_name
    fill_in(@last_name_id, :with => "")
  end

  def clear_age
    fill_in(@age_placeholder, :with => "")
  end

  def clear_degree_field
    fill_in(@degree_placeholder, :with => "")
  end

  def clear_date_of_birth
    fill_in(@date_of_birth_name, :with => "")
  end

  def click_male
    find("label[for=#{@male_radio_id}]").click
  end

  def click_submit
    find("button[type='submit']").click
  end

  def get_current_url
    current_url
  end

  def get_age_field
    find("input[placeholder='#{@age_placeholder}']").text
  end

  def get_date_of_birth_field
    find("input[name=#{@date_of_birth_name}]").value
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

  def enter_degree_title
    fill_in(@degree_placeholder, :with => @degree)
  end

  def select_university_from_dropdown university
    select(university, from: '#inputUni')
  end

  def enter_address_line_1
    fill_in(@address_line_1_id, :with => @valid_address_line_1)
  end

  def clear_address_line_1
    fill_in(@address_line_1_id, :with => "")
  end

  def enter_city
    fill_in(@city_id, :with => @city)
  end

  def clear_city
    fill_in(@city_id, :with => "")
  end

  def check_css_color(element_identifier)
    find(element_identifier).native.css_value('color')
  end

  def input_email
    fill_in('inputemailaddress', :with => 'test1@outlook.com')
  end

  def input_skills
    fill_in('exampleFormControlTextarea1', :with => 'Skills include:
      Matlab: 3 years experience
      Python: 2 years experience
      PHP: 8 months experience')
  end

  def input_phone_number
    fill_in('exampleFormControlInput1', :with => '07842948523')
  end

  def input_linkedin
    find("input[type='url']").set('https://www.linkedin.com/in/lukebrownofficial/')
  end

  def select_SDET_Stream
    find("label[for=streamRadioInline1").click
  end

  def select_Devops_Stream
    find("label[for=streamRadioInline2").click
  end

  def accept_terms_and_conditions
    check('terms')
  end

  def form_rating
      find('#experienceSlider')
  end

  def click_submit
    find("button[type='submit']").click
  end

end

