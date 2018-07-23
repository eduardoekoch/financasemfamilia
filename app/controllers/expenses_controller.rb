class ExpensesController < ApplicationController

  def show
    @expense = Expense.find(params[:id])
  end

  def new
    @expense = Expense.new

  end

  def create
    @expense = Expense.new(expense_params)
    if @expense.save
      flash[:notice] = 'Saída de recursos cadastrada com sucesso!'
      redirect_to expense_path(@expense)
    else 
      render 'new'
    end
  end
  private
  def expense_params
    params.require(:expense).permit(:date, :expense_type, :description, :value)
  end

end