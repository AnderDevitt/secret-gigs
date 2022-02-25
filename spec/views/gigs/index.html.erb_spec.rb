require 'rails_helper'

RSpec.describe "gigs/index", type: :view do
  before(:each) do
    assign(:gigs, [
      Gig.create!(
        name: "Name",
        area: "Area",
        tickets: 2,
        price: 3.5,
        user: nil
      ),
      Gig.create!(
        name: "Name",
        area: "Area",
        tickets: 2,
        price: 3.5,
        user: nil
      )
    ])
  end

  it "renders a list of gigs" do
    render
    assert_select "tr>td", text: "Name".to_s, count: 2
    assert_select "tr>td", text: "Area".to_s, count: 2
    assert_select "tr>td", text: 2.to_s, count: 2
    assert_select "tr>td", text: 3.5.to_s, count: 2
    assert_select "tr>td", text: nil.to_s, count: 2
  end
end
