class BusinessController < ApplicationController
	set :default_content_type, 'application/json'

	get "/business" do
		business = Business.all.order(:name) 
		business.to_json(inlude: {projects: {only: [:name]}})
	end

	post "/business" do
		business = Business.create(params)
		business.to_json(inlude: {projects: {only: [:name]}})
	end

	get "/business/:id" do
		business = Business.find(params[:id])
		business.to_json(inlude: {projects: {only: [:name]}})
	end

	delete "/business/:id" do
		business = Business.find(params[:id])
		business.destroy
		business.to_json
	end

	patch "/business/:id" do
		business = Business.find(params[:id])
		business.update(params)
		business.to_json(inlude: {projects: {only: [:name]}})
	end
end