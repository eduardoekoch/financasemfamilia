require 'rails_helper'

feature 'visitor_sign_up' do
  scenario 'successfully' do
    visit root_path

    click_on 'Cadastro'

    fill_in 'E-mail', with: 'teste@gmail.com'
    fill_in 'Senha', with; '12345678'

    expect(page).to have_content('Usuário cadastrado com sucesso')
  end
end