require 'rails_helper'

RSpec.describe "listings/show", type: :view do
  before(:each) do
    @listing = assign(:listing, Listing.create!(
      year: 2,
      month: "Month",
      manufacturer: "Manufacturer",
      model: "Model",
      bodytype: "Bodytype",
      state: "State",
      odometer: 3,
      colour: "Colour",
      condition: 4,
      seats: 5,
      doors: 6,
      sold: false,
      price: 7,
      description: nil,
      user: nil,
      category: nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2/)
    expect(rendered).to match(/Month/)
    expect(rendered).to match(/Manufacturer/)
    expect(rendered).to match(/Model/)
    expect(rendered).to match(/Bodytype/)
    expect(rendered).to match(/State/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/Colour/)
    expect(rendered).to match(/4/)
    expect(rendered).to match(/5/)
    expect(rendered).to match(/6/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/7/)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
