class Expense < ApplicationRecord
  has_and_belongs_to_many :groups, join_table: :join_group_and_expenses
  belongs_to :author, class_name: 'User'

  validates :name, presence: true, length: { minimum: 3, maximum: 50 }
  validates :amount, presence: true, numericality: { greater_than: 0 }
end
