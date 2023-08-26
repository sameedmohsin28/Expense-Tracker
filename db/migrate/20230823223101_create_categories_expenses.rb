class CreateCategoriesExpenses < ActiveRecord::Migration[7.0]
  def change
    create_table :categories_expenses, id: false do |t|
      t.references :category, foreign_key: true
      t.references :expense, foreign_key: true
    end
  end
end
