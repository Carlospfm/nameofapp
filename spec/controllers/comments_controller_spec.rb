require 'rails_helper'

describe CommentsController, type: :controller do

  let(:user) {User.create!(email:"berbi@example.com", password:"secret")}
  let(:product){ Product.create!(name: "city bike")}

    context 'when a user is logged in' do
     before do
       sign_in user
     end

     it 'can create comment' do
       post :create, params: { product_id: product.id, comment: { body: "fast", rating: 5 } }
       expect(response).to have_http_status(302)
     end
   end
  end