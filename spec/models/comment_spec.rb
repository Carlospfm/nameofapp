require 'rails_helper'

describe Comment do 
    context "when a comment gets created" do
    	let(:product){ Product.create!(name: "tester bike")}
        let(:user){ User.create!(email: "berbi@gmail.com", password: "secret")}
        
        it "not valid without a user" do
          expect(Comment.new(user_id: nil, product_id: product.id, body: "Dies ist ein Text")).to_not be_valid
        end

    end
end