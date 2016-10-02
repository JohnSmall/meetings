require 'rails_helper'

RSpec.describe InfluenceOfficePerson, type: :model do
  it { should have_db_column(:means_of_influence_id).of_type(:integer)}
  it { should belong_to(:means_of_influence)}
  it { should belong_to(:organisation).class_name('Entity')}
  it { should belong_to(:government_person).class_name('Entity')}
  it { should belong_to(:organisation_person).class_name('Entity')}
  it { should belong_to(:government_office).class_name('Entity')}
  it { should belong_to(:meeting).class_name('MeansOfInfluence')}
  it { should belong_to(:hospitality).class_name('MeansOfInfluence')}
  it { should belong_to(:gift).class_name('MeansOfInfluence')}
  it { should belong_to(:travel).class_name('MeansOfInfluence')}
end
