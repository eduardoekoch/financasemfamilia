require 'rails_helper'

  feature 'Register of expenses' do
    scenario 'successfully' do

      visit expense_path

      fill_in 'Data', with: '01/08/2018'
      fill_in 'Descrição', with: 'Compra de calça jeans'
      fill_in 'Valor', with: 'R$109,70'
      select 'Vestuário e acessórios', from: 'Tipo'

      click_on 'Registrar'

      expect(page).to have_css('p', text: 'Saída de recursos cadastrada com sucesso!')
      
    end
  end