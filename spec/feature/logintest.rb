require 'rails_helper'


  RSpec.feature "Sign in.", type: :feature do
    context "Sign in" do
      scenario "Signed in successfully" do
        visit '/employees/sign_in'
        
        within('form') do
          fill_in 'Email', with: 'employee1@test.com'
          fill_in 'Password', with: 'password'
        end
        click_button 'Log in'
      end
        within('kudos') do
        expect(page).to have_content('Log in')
      end
    end
  end


  
=begin  before :each do
    employee.create(email: 'employee1@test.com', password: 'password')
  end

  it "Log in" do
    visit '/employees/sign_in'
    within("#session") do
      fill_in 'Email', with: 'employee1@test.com'
      fill_in 'Password', with: 'password'
    end
    click_button 'Log in'
    expect(page).to have_content 'Signed in successfully.'
  end
end
=end
