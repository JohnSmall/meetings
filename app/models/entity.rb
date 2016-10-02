class Entity < ApplicationRecord
  def self.types
    %w(Person Organisation GovernmentOffice)
  end

  validates :name,presence: true

  self.types.each do |klass|
    scope klass.underscore.downcase.pluralize.to_sym,->{where(type: klass)}
  end

  has_many :offices,foreign_key: 'office_id',class_name:'InfluenceOfficePeople'
  has_many :people,foreign_key: 'person_id',class_name:'InfluenceOfficePeople'

end
