require 'rails_helper'

Entity.types.each do |entity_class|
  RSpec.describe entity_class.constantize, type: :model do
    it{ should have_db_column(:type).of_type(:string)}
    it{ should have_db_column(:name).of_type(:string)}
    it{ should have_db_column(:wikipedia_entry).of_type(:string)}
    it{ should validate_presence_of(:name)}
  end
end
