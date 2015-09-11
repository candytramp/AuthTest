require 'rails_helper'

RSpec.describe "class_types/new", type: :view do
  before(:each) do
    assign(:class_type, ClassType.new(
      :name => "MyString"
    ))
  end

  it "renders new class_type form" do
    render

    assert_select "form[action=?][method=?]", class_types_path, "post" do

      assert_select "input#class_type_name[name=?]", "class_type[name]"
    end
  end
end
