require "rails_helper"

RSpec.describe ProgramDirectorsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/program_directors").to route_to("program_directors#index")
    end

    it "routes to #new" do
      expect(get: "/program_directors/new").to route_to("program_directors#new")
    end

    it "routes to #show" do
      expect(get: "/program_directors/1").to route_to("program_directors#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/program_directors/1/edit").to route_to("program_directors#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/program_directors").to route_to("program_directors#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/program_directors/1").to route_to("program_directors#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/program_directors/1").to route_to("program_directors#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/program_directors/1").to route_to("program_directors#destroy", id: "1")
    end
  end
end
