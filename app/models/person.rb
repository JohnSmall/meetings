class Person < Entity
  has_many :influence_office_people,foreign_key: 'person_id',class_name:'InfluenceOfficePerson'
  has_many :meetings,through: :influence_office_people,class_name: 'Meeting'
  has_many :hospitalities,through: :influence_office_people,class_name: 'Hospitality'
  has_many :gifts,through: :influence_office_people,class_name: 'Gift'
  has_many :travels,through: :influence_office_people,class_name: 'Travel'
end
