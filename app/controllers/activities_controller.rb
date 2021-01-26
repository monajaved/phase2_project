require './config/environment'

class ActivitiesController < ApplicationController

    get '/activities' do
        redirect_if_not_logged_in
        @activities = current_user.activities
        @activity = Activity.find_by_id(session[:activity_id])
        erb :'activities/index'
    end

    get '/activities/new' do
        redirect_if_not_logged_in
        erb :'/activities/new'
    end

    get '/activities/:id' do
        redirect_if_not_logged_in
        find_activity
        redirect_if_not_user
        session[:activity_id] = @activity.id if @activity
        redirect_if_activity_not_found
        erb :'activities/show'
    end


    get '/activities/:id/edit' do
        redirect_if_not_logged_in
        find_activity
        redirect_if_activity_not_found
        redirect_if_not_user
        erb :'/activities/edit'
    end

    
    post '/activities' do
        activity = current_user.activities.new(title: params[:activity][:title], item_ids: params[:activity][:item_ids])

        if activity.save
            redirect '/activities'
        else
            flash[:errors] = activity.errors.full_messages
            redirect '/activities/new'
        end
    end

    patch "/activities/:id" do 
        find_activity
        redirect_if_activity_not_found
        if @activity.update(params[:activity])
            redirect "/activities/#{@activity.id}"
        else
            redirect "/activities/#{@activity.id}/edit"
        end

    end

    delete '/activities/:id' do
        find_activity
        redirect_if_activity_not_found
        redirect_if_not_user
        @activity.destroy 
        redirect "/activities"
    end

    private
    def find_activity
        @activity = Activity.find_by_id(params[:id])
    end

    def redirect_if_activity_not_found
        redirect "/activities" unless @activity
    end

    def redirect_if_not_user
        redirect '/activities' unless @activity.user == current_user
    end

end