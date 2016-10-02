require 'rails_helper'

MeansOfInfluence.types.each do |means_of_influence_class|
  RSpec.describe means_of_influence_class.constantize, type: :model do
    it{ should have_db_column(:type).of_type(:string)}
    it{ should have_db_column(:day).of_type(:integer)}
    it{ should have_db_column(:month).of_type(:integer)}
    it{ should have_db_column(:year).of_type(:integer)}
#    it{ should have_many(:government_offices)}
#    it{ should have_many(:organisations)}
#    it{ should have_many(:government_people)}
#    it{ should have_many(:organisation_people)}
    it{ should validate_presence_of(:year)}
    it{ should validate_presence_of(:month)}
  end

end

RSpec.describe Meeting, type: :model do
  it{ should have_db_column(:purpose).of_type(:string)}
  it{should validate_presence_of(:purpose)}
end

RSpec.describe Travel, type: :model do
  it{ should have_db_column(:purpose).of_type(:string)}
  it{should validate_presence_of(:purpose)}
end

RSpec.describe Hospitality, type: :model do
  it{ should have_db_column(:type_of_hospitality).of_type(:string)}
  it{should validate_presence_of(:type_of_hospitality)}
end

RSpec.describe Gift, type: :model do
  it{ should have_db_column(:gift).of_type(:string)}
  it{should validate_presence_of(:gift)}
end
