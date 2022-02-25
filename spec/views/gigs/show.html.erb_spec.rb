require 'rails_helper'

RSpec.describe "gigs/show", type: :view do
  before(:each) do
    @gig = assign(:gig, Gig.create!(
      name: "Name",
      area: "Area",
      tickets: 2,
      price: 3.5,
      user: nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Area/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3.5/)
    expect(rendered).to match(//)
  end
end
