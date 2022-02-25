require 'rails_helper'

RSpec.describe "gigs/edit", type: :view do
  before(:each) do
    @gig = assign(:gig, Gig.create!(
      name: "MyString",
      area: "MyString",
      tickets: 1,
      price: 1.5,
      user: nil
    ))
  end

  it "renders the edit gig form" do
    render

    assert_select "form[action=?][method=?]", gig_path(@gig), "post" do

      assert_select "input[name=?]", "gig[name]"

      assert_select "input[name=?]", "gig[area]"

      assert_select "input[name=?]", "gig[tickets]"

      assert_select "input[name=?]", "gig[price]"

      assert_select "input[name=?]", "gig[user_id]"
    end
  end
end
