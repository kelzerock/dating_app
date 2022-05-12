require 'rails_helper'

RSpec.describe "users/show", type: :view do
  before(:each) do
    @user = assign(:user, User.create!(
      lgt: "9.99",
      lnt: "9.99",
      name: "Name",
      src: "Src",
      sex: false
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Src/)
    expect(rendered).to match(/false/)
  end
end
