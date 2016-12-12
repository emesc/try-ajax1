class Item < ApplicationRecord
  default_scope -> { order(id: :desc) }

  # validates_presence_of :name, :description, :file
  validates :name, presence: true,
                   uniqueness: { case_sensitive: false }
  validates :description, presence: true,
                          uniqueness: { case_sensitive: false }
  validates :file, presence: true,
                   uniqueness: { case_sensitive: false }


  mount_uploader :file, ItemUploader
end
