class TeamController < ApplicationController
  set :default_content_type, 'application/json'
  
  get "/teams" do
    teams = Team.all 
    teams.to_json
  end

  post "/teams" do
    team = Team.create(params)
    team.to_json
  end

  get "/teams/:id" do
    team = team.find(params[:id])
    team.to_json
  end

  delete "/teams/:id" do
    team = team.find(params[:id])
    team.destroy
    team.to_json
  end

  patch "/teams/:id" do
    team = team.find(params[:id])
    team.update(params)
    team.to_json
  end
end