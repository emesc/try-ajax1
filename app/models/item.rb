class Item < ApplicationRecord
  default_scope -> { order(id: :desc) }
  mount_uploader :file, ItemUploader
end
