require 'capybara/dsl'

class RegistrationPage
  include Capybara::DSL

  attr_reader :degree, :uni

  def initialize
    @page_url = 'https://crispyjourney.herokuapp.com/'
    @degree = 'Mechanical Engineering'
    @uni = 'University of Sheffield'
  end

  def visit_registration_page
    visit(@page_url)
  end

  def input_degree_field degree_title
    find('input[placeholder = "Enter Degree"]').native.send_keys(degree_title)
  end

  def select_university_from_dropdown university
    select(university, from: '#inputUni')
  end

end
