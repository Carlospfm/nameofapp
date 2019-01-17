require 'rails_helper'

describe User do
    context "when user is present" do

        it "is valid with email and password" do
            expect(User.new(email: "berbi@gmail.com", password: "secret")).to be_valid
        end

        it "is not valid without email" do
            expect(User.new(password: "secret")).to_not be_valid
        end

    end
end