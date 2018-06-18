require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
      erb :super_hero.erb
    end

    post '/teams' do
      @pteam = Team.new(params[:team])

      params[:pirate][:ships].each do |details|
        Ship.new(details)
      end

      @ships = Ship.all


      erb :team
    end



end
