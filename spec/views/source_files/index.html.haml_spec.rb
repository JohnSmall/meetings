require 'rails_helper'

RSpec.describe "source_files/index", type: :view do
  before(:each) do
    assign(:source_files, [
      SourceFile.create!(
        :location => "Location",
        :uri => "Uri"
      ),
      SourceFile.create!(
        :location => "Location",
        :uri => "Uri"
      )
    ])
  end

  it "renders a list of source_files" do
    render
    assert_select "tr>td", :text => "Location".to_s, :count => 2
    assert_select "tr>td", :text => "Uri".to_s, :count => 2
  end
end
