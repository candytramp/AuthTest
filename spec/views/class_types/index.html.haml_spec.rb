require 'rails_helper'

RSpec.describe "class_types/index", type: :view do
  before(:each) do
    assign(:class_types, [
      ClassType.create!(
        :name => "Name"
      ),
      ClassType.create!(
        :name => "Name"
      )
    ])
  end

  it "renders a list of class_types" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
