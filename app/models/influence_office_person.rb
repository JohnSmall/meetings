class InfluenceOfficePerson < ApplicationRecord
  belongs_to :means_of_influence
  belongs_to :organisation, -> { organisations } , class_name: 'Entity',foreign_key: 'office_id'
  belongs_to :government_person, -> { people }, class_name: 'Entity',foreign_key: 'person_id'
  belongs_to :organisation_person, -> { people }, class_name: 'Entity',foreign_key: 'person_id'
  belongs_to :government_office, -> { government_offices }, class_name: 'Entity',foreign_key: 'office_id'
  belongs_to :meeting, -> { meetings }, class_name: 'MeansOfInfluence',foreign_key: 'means_of_influence_id'
  belongs_to :hospitality, -> { hospitalities }, class_name: 'MeansOfInfluence',foreign_key: 'means_of_influence_id'
  belongs_to :gift, -> { gifts }, class_name: 'MeansOfInfluence',foreign_key: 'means_of_influence_id'
  belongs_to :travel, -> { travels }, class_name: 'MeansOfInfluence',foreign_key: 'means_of_influence_id'
end
