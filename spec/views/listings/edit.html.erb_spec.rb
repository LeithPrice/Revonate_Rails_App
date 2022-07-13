require 'rails_helper'

RSpec.describe "listings/edit", type: :view do
  before(:each) do
    @listing = assign(:listing, Listing.create!(
      year: 1,
      month: "MyString",
      manufacturer: "MyString",
      model: "MyString",
      bodytype: "MyString",
      state: "MyString",
      odometer: 1,
      colour: "MyString",
      condition: 1,
      seats: 1,
      doors: 1,
      sold: false,
      price: 1,
      description: nil,
      user: nil,
      category: nil
    ))
  end

  it "renders the edit listing form" do
    render

    assert_select "form[action=?][method=?]", listing_path(@listing), "post" do

      assert_select "input[name=?]", "listing[year]"

      assert_select "input[name=?]", "listing[month]"

      assert_select "input[name=?]", "listing[manufacturer]"

      assert_select "input[name=?]", "listing[model]"

      assert_select "input[name=?]", "listing[bodytype]"

      assert_select "input[name=?]", "listing[state]"

      assert_select "input[name=?]", "listing[odometer]"

      assert_select "input[name=?]", "listing[colour]"

      assert_select "input[name=?]", "listing[condition]"

      assert_select "input[name=?]", "listing[seats]"

      assert_select "input[name=?]", "listing[doors]"

      assert_select "input[name=?]", "listing[sold]"

      assert_select "input[name=?]", "listing[price]"

      assert_select "input[name=?]", "listing[description]"

      assert_select "input[name=?]", "listing[user_id]"

      assert_select "input[name=?]", "listing[category_id]"
    end
  end
end
