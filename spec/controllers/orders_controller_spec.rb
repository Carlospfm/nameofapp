require 'rails_helper'

describe OrdersController, type: :controller do

    let(:product) { Product.create!(name:"city bike", description:"I am fast", image_url:"about.overview_1.jpg" )}
    let(:user) { User.create!(email: "berbi@mail.com", password: "secret")}
    let(:order) { Order.create!(user: user, product: product, total: product.price) }


    describe 'GET #show' do
      context 'when a user is logged in' do
        before do
          sign_in user
        end

          it "loads correct the user's order details" do
            get :show, params: {id: order.id}
            expect(response).to be_ok  
            expect(assigns(:order)).to eq order
          end
      end
    end
  end


 