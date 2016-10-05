require 'rails_helper'

RSpec.describe InfluenceOfficePerson, type: :model do
  context 'the class' do
    subject{InfluenceOfficePerson}
    InfluenceOfficePerson.types.each do |iop_type|
      it { should have_scope(iop_type.underscore.downcase.pluralize)}
    end
  end
  it { should have_db_column(:means_of_influence_id).of_type(:integer)}
  it { should have_db_column(:type).of_type(:string)}
  it { should belong_to(:means_of_influence)}
  it { should belong_to(:meeting).class_name('MeansOfInfluence')}
  it { should belong_to(:hospitality).class_name('MeansOfInfluence')}
  it { should belong_to(:gift).class_name('MeansOfInfluence')}
  it { should belong_to(:travel).class_name('MeansOfInfluence')}
end

RSpec.describe InfluenceGovernmentOfficePerson,type: :model do
  it { should belong_to(:government_person).class_name('Entity')}
  it { should belong_to(:government_office).class_name('Entity')}
end

RSpec.describe InfluenceOrganisationPerson,type: :model do
  it { should belong_to(:organisation).class_name('Entity')}
  it { should belong_to(:organisation_person).class_name('Entity')}
end
