require 'rails_helper'

  feature 'Register of expenses' do
    scenario 'successfully' do

      visit new_expense_path

      fill_in 'Data', with: '01/08/2018'
      fill_in 'Descrição', with: 'Compra de calça jeans'
      fill_in 'Valor', with: 'R$109,70'
      select 'Vestuário e acessórios', from: 'Tipo'

      click_on 'Registrar'

      expect(page).to have_css('p', text: 'Saída de recursos cadastrada com sucesso!')
      expect(page).to have_css('p', text: 'Data: 01/08/2018')
      expect(page).to have_css('p', text: 'Descrição: Compra de calça jeans')
      expect(page).to have_css('p', text: 'Valor: R$109,70')
      expect(page).to have_css('p', text: 'Tipo: Vestuário e acessórios')
      
      
    end

    scenario 'insuccessfully' do

      visit new_expense_path

      fill_in 'Data', with: ''
      fill_in 'Descrição', with: ''
      fill_in 'Valor', with: ''
      select '', from: 'Tipo'

      click_on 'Registrar'

      expect(page).to have_css('p', text: 'Data não pode ficar em branco')
      expect(page).to have_css('p', text: 'Descrição não pode ficar em branco')
      expect(page).to have_css('p', text: 'Valor não pode ficar em branco')
      expect(page).to have_css('p', text: 'Tipo não pode ficar em branco')
    end
  end