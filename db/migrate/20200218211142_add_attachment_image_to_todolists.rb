class AddAttachmentImageToTodolists < ActiveRecord::Migration[5.0]
  def self.up
    change_table :todo_lists do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :todo_lists, :image
  end
end
