require 'rails_helper'

RSpec.describe "gigs/new", type: :view do
  before(:each) do
    assign(:gig, Gig.new(
      name: "MyString",
      area: "MyString",
      tickets: 1,
      price: 1.5,
      user: nil
    ))
  end

  it "renders new gig form" do
    render

    assert_select "form[action=?][method=?]", gigs_path, "post" do

      assert_select "input[name=?]", "gig[name]"

      assert_select "input[name=?]", "gig[area]"

      assert_select "input[name=?]", "gig[tickets]"

      assert_select "input[name=?]", "gig[price]"

      assert_select "input[name=?]", "gig[user_id]"
    end
  end
end
