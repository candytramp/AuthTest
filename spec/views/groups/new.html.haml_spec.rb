require 'rails_helper'

RSpec.describe "groups/new", type: :view do
  before(:each) do
    assign(:group, Group.new(
      :number => 1,
      :direction => "MyText"
    ))
  end

  it "renders new group form" do
    render

    assert_select "form[action=?][method=?]", groups_path, "post" do

      assert_select "input#group_number[name=?]", "group[number]"

      assert_select "textarea#group_direction[name=?]", "group[direction]"
    end
  end
end
