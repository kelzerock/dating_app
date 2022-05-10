require 'rails_helper'

RSpec.describe "places/index", type: :view do
  before(:each) do
    assign(:places, [
      Place.create!(
        latitude: "9.99",
        longitude: "9.99",
        name: "Name",
        string: "String"
      ),
      Place.create!(
        latitude: "9.99",
        longitude: "9.99",
        name: "Name",
        string: "String"
      )
    ])
  end

  it "renders a list of places" do
    render
    assert_select "tr>td", text: "9.99".to_s, count: 2
    assert_select "tr>td", text: "9.99".to_s, count: 2
    assert_select "tr>td", text: "Name".to_s, count: 2
    assert_select "tr>td", text: "String".to_s, count: 2
  end
end
