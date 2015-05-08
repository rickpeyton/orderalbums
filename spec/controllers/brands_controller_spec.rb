require 'rails_helper'

RSpec.describe BrandsController, type: :controller do

  describe "brands#new" do
    it "sets a new brand instance" do
      get :new
      expect(assigns(:brand)).to be_an_instance_of(Brand)
    end
  end

  describe "brands#create" do
    context "with valid input" do
      before do
        post :create, Fabricate.attributes_for(:brand)
      end

      it "redirects to root" do
        expect(response).to redirect_to root_path
      end

      it "sets the flash success message" do
        expect(flash[:success]).not_to be_nil
      end

      it "it saves the new brand" do
        expect(Brand.all.count).to eq 1
      end
    end
  end

end
