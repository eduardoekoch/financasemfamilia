require 'rails_helper'

feature 'visitor_sign_up' do
  scenario 'successfully' do
    visit root_path

    click_on 'Cadastro'
    click_on 'Sign up'

    fill_in 'Email', with: 'teste@gmail.com'
    fill_in 'Senha', with: '123456'
    fill_in 'Confirmar', with: '123456'
    click_on 'Sign up'

    expect(page).to have_content('Usuário cadastrado com sucesso')
    expect(page).to have_content('teste@gmail.com')
    expect(page).not_to have_content('Cadastro')
  end
end
