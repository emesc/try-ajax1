class Item < ApplicationRecord
  mount_uploader :file, ItemUploader
end
