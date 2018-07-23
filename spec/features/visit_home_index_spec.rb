require 'rails_helper'

feature 'visit_home_index' do
  scenario 'sucessfully' do
    visit root_path

    expect(page).to have_content('Cadastre-se')
    expect(page).to have_content('Login')
  end
end
