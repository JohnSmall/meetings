class Entity < ApplicationRecord
  def self.types
    %w(Person Organisation GovernmentOffice)
  end
  validates :name,presence: true
end
