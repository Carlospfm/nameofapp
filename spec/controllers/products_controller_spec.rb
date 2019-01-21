require 'rails_helper'

describe ProductsController, type: :controller do
    before do
        @user = FactoryBot.create(:user)
    end
        let(:product) { Product.create!(name:"city bike", description:"I am fast", image_url:"about.overview_1.jpg" )}
    

    describe 'GET #edit' do
        context 'when a user is logged in' do
            before do
                sign_in @user
            end

            it "can edit product when confimed" do
                get :edit, params: {id: product.id}
                expect(response).to be_ok  
                expect(assigns(:product)).to eq product
            end

        end        

    end

end