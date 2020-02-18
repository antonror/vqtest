class TodoList < ApplicationRecord
  has_many :todo_items
  validates :title, :description, :deadline, presence: :true
end
