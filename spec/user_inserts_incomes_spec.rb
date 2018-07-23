require 'rails_helper'

feature 'User inserts your own incomes' do
    scenario 'successfully' do
        type = create(:income_type)

        visit root_path
        click_on 'Inserir receita'

        #fill_in 'Data:', with: '15/05/2018'
        #fill_in 'Descrição da receita:', with: 'Pagamento de férias'
        #fill_in 'Valor da receita:', with: 'R$ 2.000,00'
        select 'Férias', from: 'Tipo de receita'

        click_on 'Inserir'

        expect(page).to have_content('Receita inserida com sucesso!')
        expect(type).not_to be_empty
    end

    # scenario 'and not must fill blank'
    #     # income_type = build(:IncomeTypes)

    #     # visit root_path
    #     # click_on 'Inserir receita'

    #     # fill_in 'Data:', with ''
    #     # fill_in 'Descrição da receita:', with ''
    #     # fill_in 'Valor da receita:', with ''
    #     # select 'Férias', from ''

    #     # click_on 'Inserir'

    #     # expect(page).to have_content('Todos os campos devem ser preenchidos!')
    #     # expect(income_type).to be_empty
    # end
end