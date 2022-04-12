require 'rails_helper'


  RSpec.feature "Sign up", type: :feature do
    context "Sign up" do
      scenario "Signed in successfully" do
        visit '/employees/sign_up'
        
        within('form') do
          fill_in 'Email', with: 'gustaw@ssa.pl'
          fill_in 'Password', with: 'password'
          fill_in 'Password confirmation', with: 'password'
        end
        click_button 'Sign up'
        expect(page).to have_content('Welcome!')
      end
      scenario "Signed in successfully" do
        visit '/employees/sign_up'
        
        within('form') do
          fill_in 'Email', with: 'gustaw@dupa.pl'
          fill_in 'Password', with: 'password'
          fill_in 'Password', with: 'passwort'
        end
        click_button 'Sign up'
        expect(page).to have_content('Password confirmation')
      end
    end
  end
