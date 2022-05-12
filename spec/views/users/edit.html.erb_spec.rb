require 'rails_helper'

RSpec.describe "users/edit", type: :view do
  before(:each) do
    @user = assign(:user, User.create!(
      lgt: "9.99",
      lnt: "9.99",
      name: "MyString",
      src: "MyString",
      sex: false
    ))
  end

  it "renders the edit user form" do
    render

    assert_select "form[action=?][method=?]", user_path(@user), "post" do

      assert_select "input[name=?]", "user[lgt]"

      assert_select "input[name=?]", "user[lnt]"

      assert_select "input[name=?]", "user[name]"

      assert_select "input[name=?]", "user[src]"

      assert_select "input[name=?]", "user[sex]"
    end
  end
end
