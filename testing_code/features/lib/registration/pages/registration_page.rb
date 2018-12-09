require 'capybara/dsl'

  class Registration_page
    include Capybara::DSL

    def visit_homepage
      visit('https://crispyjourney.herokuapp.com/')

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
