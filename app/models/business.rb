class Business < ApplicationRecord
  validates :name, presence: true
  validates :kind, presence: true
  validates :content, presence: true
  scope :search_name, -> (name_parameter) { where(name: name_parameter) }
end