class InfluenceGovernmentOfficePerson < InfluenceOfficePerson
  belongs_to :government_office, -> { government_offices }, class_name: 'Entity',foreign_key: 'office_id'
  belongs_to :government_person, -> { people }, class_name: 'Entity',foreign_key: 'person_id'
end
