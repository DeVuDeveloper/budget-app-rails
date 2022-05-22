require "rails_helper"

RSpec.describe CategoryPaymentsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/category_payments").to route_to("category_payments#index")
    end

    it "routes to #new" do
      expect(get: "/category_payments/new").to route_to("category_payments#new")
    end

    it "routes to #show" do
      expect(get: "/category_payments/1").to route_to("category_payments#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/category_payments/1/edit").to route_to("category_payments#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/category_payments").to route_to("category_payments#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/category_payments/1").to route_to("category_payments#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/category_payments/1").to route_to("category_payments#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/category_payments/1").to route_to("category_payments#destroy", id: "1")
    end
  end
end
