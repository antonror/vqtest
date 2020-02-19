class TodoList < ApplicationRecord
  has_many :todo_items, dependent: :destroy
  belongs_to :user
  validates :user, :title, :description, :deadline, presence: :true

  has_attached_file :image
  validates_attachment :image,
                       content_type: { content_type: "image/jpeg" },
                       size: { in: 0..1024.kilobytes }
end
