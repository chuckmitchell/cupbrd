# frozen_string_literal: true
require 'rails_helper'

require 'test_helpers'
RSpec.configure do |c|
  c.include TestHelpers
end

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

RSpec.describe Api::V1::ItemsController, type: :controller do
  
  before(:each) do
    @admin_user = create_admin
    request.env['HTTP_AUTHORIZATION'] = ActionController::HttpAuthentication::Token.encode_credentials(@admin_user.api_key)
  end

  # This should return the minimal set of attributes required to create a valid
  # Item. As you add validations to Item, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) do
    { user_id: 1, food_id: 1, unit_id: 1, quantity: 9.99, remaining: 100 }
  end

  let(:invalid_attributes) do
    { user_id: nil, food_id: nil, unit_id: nil, quantity: -9.99, remaining: -2 }
  end

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # ItemsController. Be sure to keep this updated too.

  describe "GET #index" do
    it "assigns all items as @items" do
      item = FactoryGirl.create(:item)
      get :index, params: {}
      expect(assigns(:items)).to eq([item])
    end
  end

  describe "GET #show" do
    it "assigns the requested item as @item" do
      item = FactoryGirl.create(:item)
      get :show, params: {id: item.to_param}
      expect(assigns(:item)).to eq(item)
    end
  end

  describe "POST #create" do
    context "with valid params" do
      before(:each) do
        @user = FactoryGirl.create(:user)
        @food = FactoryGirl.create(:food)
        @unit = FactoryGirl.create(:unit)
      end

      it "creates a new Item" do
        expect do
          post :create, params: {item: FactoryGirl.attributes_for(:item, user_id: @user.id, food_id: @food.id, unit_id: @unit.id)}
        end.to change(Item, :count).by(1)
      end

      it "assigns a newly created item as @item" do
        post :create, params: {item: FactoryGirl.attributes_for(:item, user_id: @user.id, food_id: @food.id, unit_id: @unit.id)}
        expect(assigns(:item)).to be_a(Item)
        expect(assigns(:item)).to be_persisted
      end

      it "returns a :created http response" do
        post :create, params: {item: FactoryGirl.attributes_for(:item, user_id: @user.id, food_id: @food.id, unit_id: @unit.id)}
        expect(response).to have_http_status(:created)
      end
    end

    context "with invalid params" do
      it "assigns a newly created but unsaved item as @item" do
        post :create, params: {item: invalid_attributes}
        expect(assigns(:item)).to be_a_new(Item)
      end

      it "returns an :unprocessable_entity http response" do
        post :create, params: {item: invalid_attributes}
        expect(response).to have_http_status(:unprocessable_entity)
      end
    end
  end

  describe "PUT #update" do
    context "with valid params" do
      
      before(:each) do
        @user = FactoryGirl.create(:user)
        @food = FactoryGirl.create(:food)
        @unit = FactoryGirl.create(:unit)
      end
      
      let(:new_attributes) do        
        { user_id: @user.id, food_id: @food.id, unit_id: @unit.id, remaining: 55, quantity: 30}
      end

      it "updates the requested item" do
        item = FactoryGirl.create(:item)
        changed_attributes = 
        
        put :update, params: {id: item.to_param, item: new_attributes}
        item.reload
        expect(item).to have_attributes(new_attributes)
      end

      it "assigns the requested item as @item" do
        item = FactoryGirl.create(:item)
        put :update, params: {id: item.to_param, item: valid_attributes}
        expect(assigns(:item)).to eq(item)
      end

      it "returns 200 No Content http status" do
        item = FactoryGirl.create(:item)
        put :update, params: {id: item.to_param, item: FactoryGirl.attributes_for(:item, user_id: @user.id, food_id: @food.id, unit_id: @unit.id)}
        expect(response).to have_http_status(:ok)
      end
    end

    context "with invalid params" do
      it "assigns the item as @item" do
        item = FactoryGirl.create(:item)
        put :update, params: {id: item.to_param, item: invalid_attributes}
        expect(assigns(:item)).to eq(item)
      end

      it "returns 422 Unprocessable Entity http status" do
        item = FactoryGirl.create(:item)
        put :update, params: {id: item.to_param, item: invalid_attributes}
        expect(response).to have_http_status(:unprocessable_entity)
      end
    end
  end

  describe "DELETE #destroy" do
    it "destroys the requested item" do
      item = FactoryGirl.create(:item)
      expect {
        delete :destroy, params: {id: item.to_param}
      }.to change(Item, :count).by(-1)
    end

    it "returns 204 No Content http status" do
      item = FactoryGirl.create(:item)
      delete :destroy, params: {id: item.to_param}
      expect(response).to have_http_status(:no_content)
    end
  end

end
