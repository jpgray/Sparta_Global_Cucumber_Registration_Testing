require 'capybara/dsl'

class ConfirmationPage
  include Capybara::DSL

  attr_reader :confirmation_message

  def initialize
    @confirmation_message = "You have successfully registered an account with Sparta Global!"
  end

  def check_confirmation_message
    find(".container").text
  end

end
