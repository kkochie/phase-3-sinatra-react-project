class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/" do
    { message: "Good luck with your project!" }.to_json
  end

  get "/projects" do
    projects = Project.all 
    projects.to_json(include: {business: {only: [:name, :logo_url]}})
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
    project.update(
      name: params[:name],
      description: params[:description],
      due_date: params[:due_date]
    )
  end

end
