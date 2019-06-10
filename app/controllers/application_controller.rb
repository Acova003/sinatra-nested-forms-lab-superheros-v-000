require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }
    
  get '/' do 
    erb :'../views/super_hero'
  end 
  
  post '/teams' do 
    @members = Members.create(hero: params[:members][:name], power: params[:members][:power], bio: params[:members][:bio]).each do |hero_data|
        hero = Members.new(hero_data)
        hero.team = hero
        hero.save
    end 
    erb :'../views/team'
  end 
end
