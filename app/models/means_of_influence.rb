class MeansOfInfluence < ApplicationRecord
  def self.types
    %w(Meeting Hospitality Gift Travel)
  end
  validates :month,:year,presence: true
end
