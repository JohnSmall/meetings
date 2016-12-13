class InfluenceOfficePerson < ApplicationRecord
  def self.types
    %w(InfluenceGovernmentOfficePerson InfluenceOrganisationPerson)
  end
  self.types.each do |klass|
    scope klass.underscore.downcase.pluralize.to_sym,->{where(type: klass)}
  end
  validates :means_of_influence_id,presence: true
  belongs_to :meeting, foreign_key: 'means_of_influence_id' 
  # We might need to change these to scopes as the factory specs report errors because the records are invalid
  # belongs_to :hospitality, foreign_key: 'means_of_influence_id'
  # belongs_to :gift, foreign_key: 'means_of_influence_id'
  # belongs_to :travel, foreign_key: 'means_of_influence_id'
  belongs_to :person
end
