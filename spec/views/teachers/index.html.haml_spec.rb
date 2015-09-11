require 'rails_helper'

RSpec.describe "teachers/index", type: :view do
  before(:each) do
    assign(:teachers, [
      Teacher.create!(
        :fname => "Fname",
        :lname => "Lname"
      ),
      Teacher.create!(
        :fname => "Fname",
        :lname => "Lname"
      )
    ])
  end

  it "renders a list of teachers" do
    render
    assert_select "tr>td", :text => "Fname".to_s, :count => 2
    assert_select "tr>td", :text => "Lname".to_s, :count => 2
  end
end
