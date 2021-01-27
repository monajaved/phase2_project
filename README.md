### Welcome to "Stay Active" Sinatra project

* Install Instructions

* Clone the project by typing in git clone git@github.com:monajaved/phase2_project.git in your terminal.
* This project requires gems that are listed in the Gemfile. 
* Make sure to type in bundle install to install all the dependencies before working on your code.
* Make sure to type in rake db:migrate and rake db:seed to migrate the tables and seed the data available.


### Project Requirements

** To create a website that allows you to make a list for items that are needed for outdoor activities 
** Website will have many users that should be able to log in and create the list and logout 
** Models required:
   -Users
   -Activities
   -Items
** Should be able to delete activities and items 
** Example: User can select from different activities (checkbox) or create a new activity.
    -Once selected/created, user should be able to add new items or items can be suggested related to the activity.
** RESTful routes

    GET routes
        index  -/activites (should be a list of activities)
        show   -/activities/:id (should display more information regarding that activity)
        new    -/activities/new (display a form that allows users to create a new activity)
        edit   -/activities/:id/edit (displays a form that allows users to edit an existing activity)
    POST routes
        create -/activities (create a new activity)
    PATCH routes
        update -/activites/:id (Edit an existing entry)
    DELETE routes
        delete -/activities/:id (deleting an activity)



