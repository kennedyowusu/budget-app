class ExpensesController < ApplicationController
  def new
    @expense = Expense.new
    @groups = current_user.groups
    @user = current_user
  end

  def create
    @expense = Expense.new(expense_params)
    if @expense.save
      redirect_to user_group_path(@expense.author_id, @expense.group_ids), notice: 'Expense created successfully.'
    else
      @groups = current_user.groups
      render :new
    end
  end

  private

  def expense_params
    params.require(:expense).permit(:name, :amount, group_ids: []).merge(author: current_user)
  end
end
