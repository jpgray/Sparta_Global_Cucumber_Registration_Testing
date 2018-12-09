
# require relative your pages here
require_relative 'pages/registration_page.rb'

module RegistrationSite
  def registration_page
    Registration_page.new
  end

  # place your methods here
  def registration_page
    RegistrationPage.new
  end

end
