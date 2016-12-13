require 'rails_helper'

RSpec.describe "source_files/show", type: :view do
  before(:each) do
    @source_file = assign(:source_file, SourceFile.create!(
      :location => "Location",
      :uri => "Uri"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Location/)
    expect(rendered).to match(/Uri/)
  end
end
