require 'rails_helper'

RSpec.describe "subjects/edit", type: :view do
  before(:each) do
    @subject = assign(:subject, Subject.create!(
      :name => "MyString",
      :code => "MyString"
    ))
  end

  it "renders the edit subject form" do
    render

    assert_select "form[action=?][method=?]", subject_path(@subject), "post" do

      assert_select "input#subject_name[name=?]", "subject[name]"

      assert_select "input#subject_code[name=?]", "subject[code]"
    end
  end
end
