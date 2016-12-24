class Item < ApplicationRecord
  default_scope -> { order(id: :desc) }

  # # validating this way may cause TypeError: can't cast ItemUploader
  # # Soln: Field cannot be unique.. CarrierWave stores "no file" as empty string
  # validates_presence_of :name, :description, :file
  # validates :name, presence: true,
  #                  uniqueness: { case_sensitive: false }
  # validates :description, presence: true,
  #                         uniqueness: { case_sensitive: false }
  # validates :file, presence: true,
  #                  uniqueness: { case_sensitive: false }


  mount_uploader :file, ItemUploader
end
