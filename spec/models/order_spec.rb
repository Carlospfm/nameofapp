require 'rails_helper'

describe Order do

  let(:product) {

    Product.create!( name: "city bike",
      description: "awesome citybike",
      image_url: "bike1.jpg",
    )
  }

  let(:user) {User.create!(email: "berbi@gmail.com", password: "secret")}


  it "is not valid without product" do
    expect(Order.new( user: user, total: 10)).not_to be_valid
  end
end