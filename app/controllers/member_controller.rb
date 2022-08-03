class MemberController < ApplicationController
  set :default_content_type, 'application/json'
  
  get "/members" do
    members = Member.all 
    members.to_json
  end

  post "/members" do
    member = Member.create(params)
    member.to_json
  end

  get "/members/:id" do
    member = Member.find(params[:id])
    member.to_json
  end

  delete "/members/:id" do
    member = Member.find(params[:id])
    member.destroy
    member.to_json
  end

  patch "/members/:id" do
    member = Member.find(params[:id])
    member.update(params)
    member.to_json
  end
end