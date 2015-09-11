require 'rails_helper'

RSpec.describe "class_types/edit", type: :view do
  before(:each) do
    @class_type = assign(:class_type, ClassType.create!(
      :name => "MyString"
    ))
  end

  it "renders the edit class_type form" do
    render

    assert_select "form[action=?][method=?]", class_type_path(@class_type), "post" do

      assert_select "input#class_type_name[name=?]", "class_type[name]"
    end
  end
end
