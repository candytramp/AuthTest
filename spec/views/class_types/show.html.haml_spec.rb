require 'rails_helper'

RSpec.describe "class_types/show", type: :view do
  before(:each) do
    @class_type = assign(:class_type, ClassType.create!(
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
  end
end
