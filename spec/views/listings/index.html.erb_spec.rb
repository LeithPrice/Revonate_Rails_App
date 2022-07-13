require 'rails_helper'

RSpec.describe "listings/index", type: :view do
  before(:each) do
    assign(:listings, [
      Listing.create!(
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
      ),
      Listing.create!(
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
      )
    ])
  end

  it "renders a list of listings" do
    render
    assert_select "tr>td", text: 2.to_s, count: 2
    assert_select "tr>td", text: "Month".to_s, count: 2
    assert_select "tr>td", text: "Manufacturer".to_s, count: 2
    assert_select "tr>td", text: "Model".to_s, count: 2
    assert_select "tr>td", text: "Bodytype".to_s, count: 2
    assert_select "tr>td", text: "State".to_s, count: 2
    assert_select "tr>td", text: 3.to_s, count: 2
    assert_select "tr>td", text: "Colour".to_s, count: 2
    assert_select "tr>td", text: 4.to_s, count: 2
    assert_select "tr>td", text: 5.to_s, count: 2
    assert_select "tr>td", text: 6.to_s, count: 2
    assert_select "tr>td", text: false.to_s, count: 2
    assert_select "tr>td", text: 7.to_s, count: 2
    assert_select "tr>td", text: nil.to_s, count: 2
    assert_select "tr>td", text: nil.to_s, count: 2
    assert_select "tr>td", text: nil.to_s, count: 2
  end
end
