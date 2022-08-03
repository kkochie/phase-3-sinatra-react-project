class RequestController < ApplicationController
  set :default_content_type, 'application/json'
  
  get "/requests" do
    requests = Request.all 
    requests.to_json
  end

  post "/requests" do
    request = Request.create(params)
    request.to_json
  end

  get "/requests/:id" do
    request = Request.find(params[:id])
    request.to_json
  end

  delete "/requests/:id" do
    request = Request.find(params[:id])
    request.destroy
    request.to_json
  end

  patch "/requests/:id" do
    request = Request.find(params[:id])
    project.update(params)
    project.to_json
  end
end