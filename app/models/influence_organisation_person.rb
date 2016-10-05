class InfluenceOrganisationPerson < InfluenceOfficePerson
  belongs_to :organisation, -> { organisations } , class_name: 'Entity',foreign_key: 'office_id'
  belongs_to :organisation_person, -> { people }, class_name: 'Entity',foreign_key: 'person_id'
end
