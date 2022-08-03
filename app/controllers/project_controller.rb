class ProjectController < ApplicationController
  set :default_content_type, 'application/json'
  
  get "/projects" do
    projects = Project.all 
    projects.to_json(include: {business: {only: [:name, :logo_url]}})
  end

  post "/projects" do
    project = Project.create(params)
    project.to_json
  end

  get "/projects/:id" do
    project = Project.find(params[:id])
    project.to_json(include: {business: {only: [:name, :logo_url]}})
  end

  delete "/projects/:id" do
    project = Project.find(params[:id])
    project.destroy
    project.to_json
  end

  patch "/projects/:id" do
    project = Project.find(params[:id])
    project.update(params)
    project.to_json
  end
end