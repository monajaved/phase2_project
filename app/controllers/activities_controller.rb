require './config/environment'

class ActivitiesController < ApplicationController

    get '/activities' do
        @activity = Activity.all
        erb :'activities/index'
    end

    get '/activities/new' do
        erb :'/activities/new'
    end

    get '/activities/:id' do
        @activity = Activity.find_by_id(params[:id])
        erb :'activities/show'
    end
    

    post '/activities' do
        activity = Activity.new(params[:activity])
        if activity.save
            redirect '/activities'
        else
            redirect '/activities/new'
        end
    end

end