
# require relative your pages here
require_relative 'pages/registration_page.rb'

module RegistrationSite

  def registration_page
    RegistrationPage.new
  end

  def confirmation_page
    ConfirmationPage.new
  end

end
