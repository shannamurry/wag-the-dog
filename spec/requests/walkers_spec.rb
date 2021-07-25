require "rails_helper"

RSpec.describe "WalkersControllers", type: :request do
  describe "get walkers_path" do
    it "renders the index view" do
      FactoryBot.create_list(:walker, 10)
      get walkers_path
      expect(response).to render_template(:index)
    end
  end

  describe "get walker_path" do
    it "renders the :show template" do
      walker = FactoryBot.create(:walker)
      get walker_path(id: walker.id)
      expect(response).to render_template(:show)
    end

    it "redirects to the index path if the walker id is invalid" do
      get walker_path(id: 5000) #an ID that doesn't exist
      expect(response).to redirect_to walkers_path
    end
  end
end
