class TodoList < ApplicationRecord
  has_many :todo_items
  validates :title, :description, :deadline, presence: :true

  has_attached_file :image
  validates_attachment :image,
                       content_type: { content_type: "image/jpeg" },
                       size: { in: 0..1024.kilobytes }
end
