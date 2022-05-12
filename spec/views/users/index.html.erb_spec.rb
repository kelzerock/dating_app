require 'rails_helper'

RSpec.describe "users/index", type: :view do
  before(:each) do
    assign(:users, [
      User.create!(
        lgt: "9.99",
        lnt: "9.99",
        name: "Name",
        src: "Src",
        sex: false
      ),
      User.create!(
        lgt: "9.99",
        lnt: "9.99",
        name: "Name",
        src: "Src",
        sex: false
      )
    ])
  end

  it "renders a list of users" do
    render
    assert_select "tr>td", text: "9.99".to_s, count: 2
    assert_select "tr>td", text: "9.99".to_s, count: 2
    assert_select "tr>td", text: "Name".to_s, count: 2
    assert_select "tr>td", text: "Src".to_s, count: 2
    assert_select "tr>td", text: false.to_s, count: 2
  end
end
