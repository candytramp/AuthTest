require 'rails_helper'

RSpec.describe "rooms/index", type: :view do
  before(:each) do
    assign(:rooms, [
      Room.create!(
        :number => 1
      ),
      Room.create!(
        :number => 1
      )
    ])
  end

  it "renders a list of rooms" do
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
