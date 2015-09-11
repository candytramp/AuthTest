require 'rails_helper'

RSpec.describe "groups/show", type: :view do
  before(:each) do
    @group = assign(:group, Group.create!(
      :number => 1,
      :direction => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/1/)
    expect(rendered).to match(/MyText/)
  end
end
