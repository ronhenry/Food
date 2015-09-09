require 'rails_helper'

RSpec.describe "venues/index", type: :view do
  before(:each) do
    assign(:venues, [
      Venue.create!(
        :name => "",
        :address => "Address"
      ),
      Venue.create!(
        :name => "",
        :address => "Address"
      )
    ])
  end

  it "renders a list of venues" do
    render
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "Address".to_s, :count => 2
  end
end
