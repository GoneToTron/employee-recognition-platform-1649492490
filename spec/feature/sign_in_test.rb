require 'rails_helper'


  RSpec.feature "Sign in", type: :feature do
    context "Sign in" do
        scenario "Signed in successfully"
        employee = Employee.create(email: 'user@test.com', password: 'password')
        visit ('/employees/sign_in')
        within('form') do
            fill_in 'Email', with: 'user@test.com'
            fill_in 'Password', with: 'password'
        end
        click_button 'Log in'
        expect(page).to have_content('successfully')
      end
    end

