class Person < Entity
  has_many :influence_office_people,foreign_key: 'person_id'
  has_many :meetings,through: :influence_office_people
  has_many :hospitalities,through: :influence_office_people
  has_many :gifts,through: :influence_office_people
  has_many :travels,through: :influence_office_people
end
