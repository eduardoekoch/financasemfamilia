require 'rails_helper'

  feature 'registre family' do
    scenario 'successfully' do

    visit root_path

    click_on 'Cadastre sua família'

    fill_in 'Nome da família', with: 'Silva Santos'
    fill_in 'CEP da família', with: '0907658976'
    fill_in 'Objetivos da família', with: 'Ir para a Disney'
    fill_in 'Valor estimado do objetivo', with: 'R$ 5.000,00'
    fill_in 'Meta mensal para poupar', with: 'R$ 500,00'

    click_on 'Cadastrar'

    expect(page).to have_content('Família cadastrada com sucesso!')
    expect(page).to have_css('h1', text: 'Cadastre seus familiares')
    expect(page).to have_css('h3', text: 'Família Silva Santos')
    expect(page).to have_css('p', text: 'CEP da família: 0907658976')
    expect(page).to have_css('p', text: 'Objetivo da família: Ir para a Disney')
    expect(page).to have_css('p', text: 'Valor estimado do objetivo: R$ 5.000,00')
    expect(page).to have_css('p', text: 'Meta mensal para poupar R$ 500,00')

    end
   end
