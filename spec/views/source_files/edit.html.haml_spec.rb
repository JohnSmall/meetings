require 'rails_helper'

RSpec.describe "source_files/edit", type: :view do
  before(:each) do
    @source_file = assign(:source_file, SourceFile.create!(
      :location => "MyString",
      :uri => "MyString"
    ))
  end

  it "renders the edit source_file form" do
    render

    assert_select "form[action=?][method=?]", source_file_path(@source_file), "post" do

      assert_select "input#source_file_location[name=?]", "source_file[location]"

      assert_select "input#source_file_uri[name=?]", "source_file[uri]"
    end
  end
end
