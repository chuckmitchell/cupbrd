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

RSpec.describe Api::V1::UnitsController, type: :controller do
  
  before(:each) do
    @admin_user = create_admin
    request.env['HTTP_AUTHORIZATION'] = ActionController::HttpAuthentication::Token.encode_credentials(@admin_user.api_key)
  end
  
  # This should return the minimal set of attributes required to create a valid
  # Unit. As you add validations to Unit, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) do
    { name: "milliliters", symbol: 'ml', measurement_type: 'liquid' }
  end

  let(:invalid_attributes) do
    { name: "", symbol: '', measurement_type: nil }
  end

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # UnitsController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET #index" do
    it "assigns all units as @units" do
      unit = FactoryGirl.create(:unit)
      get :index, params: {}
      expect(assigns(:units)).to eq([unit])
    end
  end

  describe "GET #show" do
    it "assigns the requested unit as @unit" do
      unit = FactoryGirl.create(:unit)
      get :show, params: {id: unit.to_param}
      expect(assigns(:unit)).to eq(unit)
    end
  end

  describe "POST #create" do
    context "with valid params" do
      it "creates a new Unit" do
        expect {
          post :create, params: {unit: valid_attributes}
        }.to change(Unit, :count).by(1)
      end

      it "assigns a newly created unit as @unit" do
        post :create, params: {unit: valid_attributes}
        expect(assigns(:unit)).to be_a(Unit)
        expect(assigns(:unit)).to be_persisted
      end

      it "returns a :created http response" do
        post :create, params: {unit: valid_attributes}
        expect(response).to have_http_status(:created)
      end
    end

    context "with invalid params" do
      it "assigns a newly created but unsaved unit as @unit" do
        post :create, params: {unit: invalid_attributes}
        expect(assigns(:unit)).to be_a_new(Unit)
      end

      it "returns an :unprocessable_entity http response" do
        post :create, params: {unit: invalid_attributes}
        expect(response).to have_http_status(:unprocessable_entity)
      end
    end
  end

  describe "PUT #update" do
    context "with valid params" do
      let(:new_attributes) do
        { name: "milliliters_updated", symbol: 'ml_updated', measurement_type: 0 }
      end

      it "updates the requested unit" do
        unit = FactoryGirl.create(:unit)
        put :update, params: {id: unit.to_param, unit: new_attributes}
        unit.reload
        expect(unit).to have_attributes(new_attributes)      
      end

      it "assigns the requested unit as @unit" do
        unit = FactoryGirl.create(:unit)
        put :update, params: {id: unit.to_param, unit: valid_attributes}
        expect(assigns(:unit)).to eq(unit)
      end

      it "returns 200 No Content http status" do
        unit = FactoryGirl.create(:unit)
        put :update, params: {id: unit.to_param, unit: valid_attributes}
        expect(response).to have_http_status(:ok)
      end
    end

    context "with invalid params" do
      it "assigns the unit as @unit" do
        unit = FactoryGirl.create(:unit)
        put :update, params: {id: unit.to_param, unit: invalid_attributes}
        expect(assigns(:unit)).to eq(unit)
      end

      it "returns 422 Unprocessable Entity http status" do
        unit = FactoryGirl.create(:unit)
        put :update, params: {id: unit.to_param, unit: invalid_attributes}
        expect(response).to have_http_status(:unprocessable_entity)
      end
    end
  end

  describe "DELETE #destroy" do
    it "destroys the requested unit" do
      unit = FactoryGirl.create(:unit)
      expect {
        delete :destroy, params: {id: unit.to_param}
      }.to change(Unit, :count).by(-1)
    end

    it "returns 204 No Content http status" do
      unit = FactoryGirl.create(:unit)
      delete :destroy, params: {id: unit.to_param}
      expect(response).to have_http_status(:no_content)
    end
  end

end
