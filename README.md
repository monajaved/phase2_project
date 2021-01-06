### Objectives 

** To create a website that allows you to make a list for items that are needed for outdoor activities 
** Website will have many users that should be able to log in and create the list and logout 
** Models required:
   -Users
   -Activities
   -Items
   (most likely many-to-many relationship between users and activities and items belong to activities)
** Should be able to delete activities and items 
** Example: User can select from different activities (checkbox) or create a new activity.
    -Once selected/created, user should be able to add new items or items can be suggested related to the activity.
    -If 'gymming' is selected, all sort of gym equipment should be listed in a new page like dumbbells, yoga mat, gym clothes etc.
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

### Stretch Goals

** Maybe the user can enter location and view areas where they can do the activities they are interested in such as hiking or skiing
** Or maybe be able to view other apps that help them in their search such as Trail Map for hiking.


