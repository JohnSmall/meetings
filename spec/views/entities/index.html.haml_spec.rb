require 'rails_helper'

RSpec.describe "entities/index", type: :view do
  before(:each) do
    assign(:entities, [
      Entity.create!(
        :name => "Name",
        :wikipedia_entry => "Wikipedia Entry",
        :type => "Type"
      ),
      Entity.create!(
        :name => "Name",
        :wikipedia_entry => "Wikipedia Entry",
        :type => "Type"
      )
    ])
  end

  it "renders a list of entities" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Wikipedia Entry".to_s, :count => 2
    assert_select "tr>td", :text => "Type".to_s, :count => 2
  end
end
