require 'rails_helper'

RSpec.describe "groups/index", type: :view do
  before(:each) do
    assign(:groups, [
      Group.create!(
        :number => 1,
        :direction => "MyText"
      ),
      Group.create!(
        :number => 1,
        :direction => "MyText"
      )
    ])
  end

  it "renders a list of groups" do
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
