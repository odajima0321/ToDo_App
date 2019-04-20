class Todo < ApplicationRecord
  mount_uploader :image_url, ImageUploader
  def self.search(search)
    if search
      Todo.where(['(content LIKE ?) OR (name LIKE ?)', "%#{search}%", "%#{search}%"])
    else
      Todo.all
    end
  end
end
