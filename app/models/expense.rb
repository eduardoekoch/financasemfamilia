class Expense < ApplicationRecord

  validates :date, :description, :expense_type, :value, presence: { message: 'não pode ficar em branco'}
end
