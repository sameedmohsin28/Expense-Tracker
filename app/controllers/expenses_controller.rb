class ExpensesController < ApplicationController
  def index
    @category = Category.find(params[:category_id])
    @expenses = @category.expenses
  end

  def new
    @expense = Expense.new
  end

  def create
    @category = Category.find(params[:category_id])
    @expense = Expense.new(expense_params)
    @expense.author = current_user
    if @expense.save
      @category.expenses << @expense
      redirect_to category_expenses_path(@category), notice: 'New expense added'
    else
      flash.now[:alert] = 'Unable to add new category'
      render :new
    end
  end

  def expense_params
    params.require(:expense).permit(:name, :amount)
  end
end
