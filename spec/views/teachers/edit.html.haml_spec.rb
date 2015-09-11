require 'rails_helper'

RSpec.describe "teachers/edit", type: :view do
  before(:each) do
    @teacher = assign(:teacher, Teacher.create!(
      :fname => "MyString",
      :lname => "MyString"
    ))
  end

  it "renders the edit teacher form" do
    render

    assert_select "form[action=?][method=?]", teacher_path(@teacher), "post" do

      assert_select "input#teacher_fname[name=?]", "teacher[fname]"

      assert_select "input#teacher_lname[name=?]", "teacher[lname]"
    end
  end
end
