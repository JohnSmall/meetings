class InfluenceOfficePerson < ApplicationRecord
  def self.types
    %w(InfluenceGovernmentOfficePerson InfluenceOrganisationPerson)
  end
  self.types.each do |klass|
    scope klass.underscore.downcase.pluralize.to_sym,->{where(type: klass)}
  end
  belongs_to :means_of_influence
  belongs_to :meeting, -> { meetings }, class_name: 'MeansOfInfluence',foreign_key: 'means_of_influence_id'
  belongs_to :hospitality, -> { hospitalities }, class_name: 'MeansOfInfluence',foreign_key: 'means_of_influence_id'
  belongs_to :gift, -> { gifts }, class_name: 'MeansOfInfluence',foreign_key: 'means_of_influence_id'
  belongs_to :travel, -> { travels }, class_name: 'MeansOfInfluence',foreign_key: 'means_of_influence_id'
end
