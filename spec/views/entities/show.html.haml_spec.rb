require 'rails_helper'

RSpec.describe "entities/show", type: :view do
  before(:each) do
    @entity = assign(:entity, Entity.create!(
      :name => "Name",
      :wikipedia_entry => "Wikipedia Entry"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Wikipedia Entry/)
    expect(rendered).to match(/Type/)
  end
end
