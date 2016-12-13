require 'rails_helper'

RSpec.describe "source_files/new", type: :view do
  before(:each) do
    assign(:source_file, SourceFile.new(
      :location => "MyString",
      :uri => "MyString"
    ))
  end

  it "renders new source_file form" do
    render

    assert_select "form[action=?][method=?]", source_files_path, "post" do

      assert_select "input#source_file_location[name=?]", "source_file[location]"

      assert_select "input#source_file_uri[name=?]", "source_file[uri]"
    end
  end
end
