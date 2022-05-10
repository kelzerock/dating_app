require 'rails_helper'

RSpec.describe "places/show", type: :view do
  before(:each) do
    @place = assign(:place, Place.create!(
      latitude: "9.99",
      longitude: "9.99",
      name: "Name",
      string: "String"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/String/)
  end
end
