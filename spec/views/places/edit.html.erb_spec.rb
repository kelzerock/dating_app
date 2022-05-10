require 'rails_helper'

RSpec.describe "places/edit", type: :view do
  before(:each) do
    @place = assign(:place, Place.create!(
      latitude: "9.99",
      longitude: "9.99",
      name: "MyString",
      string: "MyString"
    ))
  end

  it "renders the edit place form" do
    render

    assert_select "form[action=?][method=?]", place_path(@place), "post" do

      assert_select "input[name=?]", "place[latitude]"

      assert_select "input[name=?]", "place[longitude]"

      assert_select "input[name=?]", "place[name]"

      assert_select "input[name=?]", "place[string]"
    end
  end
end
