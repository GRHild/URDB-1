require 'spec_helper'

describe "showings/index" do
  before(:each) do
    assign(:showings, [
      stub_model(Showing,
        :location => "Location"
      ),
      stub_model(Showing,
        :location => "Location"
      )
    ])
  end

  it "renders a list of showings" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Location".to_s, :count => 2
  end
end
