require 'rails_helper'

RSpec.describe "groups/edit", type: :view do
  before(:each) do
    @group = assign(:group, Group.create!(
      :number => 1,
      :direction => "MyText"
    ))
  end

  it "renders the edit group form" do
    render

    assert_select "form[action=?][method=?]", group_path(@group), "post" do

      assert_select "input#group_number[name=?]", "group[number]"

      assert_select "textarea#group_direction[name=?]", "group[direction]"
    end
  end
end
