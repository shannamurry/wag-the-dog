require "rails_helper"
require_relative "../support/devise"

# RSpec.describe "WalkersControllers", type: :request do
#   describe "get walkers_path" do
#     it "renders the index view" do
#       FactoryBot.create_list(:walker, 10)
#       get walkers_path
#       expect(response).to render_template(:index)
#     end
#   end

#   describe "get walker_path" do
#     it "renders the :show template" do
#       walker = FactoryBot.create(:walker)
#       get walker_path(id: walker.id)
#       expect(response).to render_template(:show)
#     end

#     it "redirects to the index path if the walker id is invalid" do
#       get walker_path(id: 5000) #an ID that doesn't exist
#       expect(response).to redirect_to walkers_path
#     end
#   end
  ##############################################
  ## USER MUST BE LOGGED IN
  # describe "get new_walker_path" do
  #   login_user
  #   it "renders the :new template" do
  #     get new_walker_path
  #     expect(response).to render_template(:new)
  #   end
  # end

  # describe "get edit_walker_path" do
  #   it "renders the :edit template" do
  #     walker = FactoryBot.create(:walker)
  #     get edit_walker_path(walker.id)
  #     expect(response).to render_template(:edit)
  #   end
  # end

  # describe "post walkers_path with valid data" do
  #   it "saves a new entry and redirects to the show path for the entry" do
  #     walker_attributes = FactoryBot.attributes_for(:walker)
  #     expect {
  #       post walkers_path, params: { walker: walker_attributes }
  #     }.to change(Walker, :count)
  #     expect(response).to redirect_to walker_path(id: Walker.last.id)
  #   end
  # end

  # describe "post walkers_path with invalid data" do
  #   it "does not save a new entry or redirect" do
  #     walker_attributes = FactoryBot.attributes_for(:walker)
  #     walker_attributes.delete(:first_name)
  #     expect {
  #       post walkers_path, params: { walker: walker_attributes }
  #     }.to_not change(Walker, :count)
  #     expect(response).to render_template(:new)
  #   end
  # end

  # describe "put walker_path with valid data" do
  #   it "updates an entry and redirects to the show path for the walker" do
  #     walker = FactoryBot.create(:walker)
  #     put walker_path(walker.id), params: { walker: { phone: "2679034025" } }
  #     walker.reload
  #     expect(walker.phone).to eq("2679034025")
  #     expect(response).to redirect_to walker_path(walker.id)
  #   end
  # end

  # describe "put walker_path with invalid data" do
  #   it "does not update the walker record or redirect" do
  #     walker = FactoryBot.create(:walker)
  #     put walker_path(walker.id), params: { walker: { phone: "123" } }
  #     walker.reload
  #     expect(walker.phone).not_to eq("123")
  #     expect(response).to render_template(:edit)
  #   end
  # end

  # describe "delete a walker record" do
  #   it "deletes a walker record" do
  #     walker = FactoryBot.create(:walker)
  #     expect { delete walker_path(walker.id) }.to change(Walker, :count)
  #     delete walker_path(walker.id)
  #     expect(response).to redirect_to walkers_path
  #   end
  # end
# end
