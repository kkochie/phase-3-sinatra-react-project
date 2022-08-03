class TaskController < ApplicationController
  set :default_content_type, 'application/json'
  
  get "/tasks" do
    tasks = Task.all 
    tasks.to_json
  end

  post "/tasks" do
    task = Task.create(params)
    task.to_json
  end

  get "/tasks/:id" do
    task = Task.find(params[:id])
    task.to_json
  end

  delete "/tasks/:id" do
    task = Task.find(params[:id])
    task.destroy
    task.to_json
  end

  patch "/tasks/:id" do
    task = Task.find(params[:id])
    task.update(params)
    task.to_json
  end
end