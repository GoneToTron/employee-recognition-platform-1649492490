require 'rails_helper'


  RSpec.feature "Sign up", type: :feature do
    context "Sign up" do
      scenario "Signed in successfully" do
        visit '/employees/sign_up'
        
        within('form') do
          fill_in 'Email', with: 'gustaw@dupa.pl'
          fill_in 'Password', with: 'password'
          fill_in 'Password confirmation', with: 'password'
        end
        click_button 'Sign up'
        expect(page).to have_content('Welcome!')
      end
      scenario "Signed in successfully" do
        visit '/employees/sign_up'
        
        within('form') do
          fill_in 'Email', with: 'gustaw@a.pl'
          fill_in 'Password', with: 'password'
          fill_in 'Password', with: 'passwort'
        end
        click_button 'Sign up'
        expect(page).to have_content('Password confirmation')
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
