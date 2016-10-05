class MeansOfInfluence < ApplicationRecord
  def self.types
    %w(Meeting Hospitality Gift Travel)
  end
  validates :month,:year,presence: true
  has_many :influence_government_office_people,->{ influence_government_office_people},class_name: 'InfluenceOfficePerson'
  has_many :influence_organisation_people,->{ influence_organisation_people},class_name: 'InfluenceOfficePerson'
  has_many :organisations,through: :influence_organisation_people,class_name: 'Organisation'
  has_many :organisation_people,through: :influence_organisation_people,class_name: 'Person'
  has_many :government_people,through: :influence_government_office_people,class_name: 'Person'
  has_many :government_offices,through: :influence_government_office_people,class_name: 'GovernmentOffice'

  self.types.each do |klass|
    scope klass.underscore.downcase.pluralize.to_sym,->{where(type: klass)}
  end
end
